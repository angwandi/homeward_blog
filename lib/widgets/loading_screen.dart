import 'package:flutter/material.dart';
import 'package:homeward_blog/shared_style/ui_helpers.dart';

class ProgressScreen extends StatelessWidget {
  final Widget child;
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Animation<Color>? valueColor;

  ProgressScreen({
    Key? key,
    required this.child,
    required this.inAsyncCall,
    this.opacity = 0.3,
    this.color = Colors.grey,
    this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    widgetList.add(child);
    if (inAsyncCall) {
      final modal = Stack(
        children: [
          Opacity(
            opacity: opacity,
            child: ModalBarrier(dismissible: false, color: color),
          ),
          Center(
            child: Card(
              child: Container(
                width: 200,
                height: 100,
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    CircularProgressIndicator(
                      strokeWidth: 4.0,
                    ),
                    verticalSpaceSmall,
                    Text('Please wait...'),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
      widgetList.add(modal);
    }
    return Stack(
      children: widgetList,
    );
  }
}
