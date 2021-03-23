import 'package:flutter/material.dart';
import 'package:homeward_blog/routes/route_names.dart';
import 'package:homeward_blog/shared_style/ui_helpers.dart';

class PageNotFoundView extends StatefulWidget {
  @override
  _PageNotFoundViewState createState() => _PageNotFoundViewState();
}

class _PageNotFoundViewState extends State<PageNotFoundView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            width: 600,
            child: Card(
              elevation: 0,
              child: PageNotFoundViewItems(),
            ),
          ),
        ),
      ),
    );
  }
}

class PageNotFoundViewItems extends StatefulWidget {
  @override
  _PageNotFoundViewItemsState createState() => _PageNotFoundViewItemsState();
}

class _PageNotFoundViewItemsState extends State<PageNotFoundViewItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "404",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
              ),
              Text(
                "Sorry, we couldn't find the page...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              verticalSpaceMedium,
              Image(
                image: AssetImage('images/404.png'),
              ),
              verticalSpaceMedium,
              Text(
                "But Dash is here to take you to Homeward",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              verticalSpaceMedium,
              Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    child: Text('Login Page'),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, LoginRoute),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
