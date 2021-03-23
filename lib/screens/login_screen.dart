import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homeward_blog/routes/route_names.dart';
import 'package:homeward_blog/shared_style/animated_progress_indicator.dart';
import 'package:homeward_blog/shared_style/app_colors.dart';
import 'package:homeward_blog/shared_style/text_style.dart';
import 'package:homeward_blog/shared_style/ui_helpers.dart';
import 'package:homeward_blog/shared_style/utils.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInfo) => SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/home2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.5, sigmaY: 3.5),
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1280),
                  child: sizeInfo.screenSize.width > 800
                      ? Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Center(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hello, \nWelcome back to homeward !',
                                          textAlign: TextAlign.start,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        verticalSpaceMedium,
                                        Text(
                                          'Manage properties from anywhere All for free.\n',
                                          textAlign: TextAlign.start,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          'Homeward’s free software organizes your payments and '
                                          'properties in one screen, so you can '
                                          'quickly collect rent and manage your units '
                                          'without worrying about paperwork or missing details.',
                                          textAlign: TextAlign.start,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                color: Colors.white,
                                                fontSize: 24,
                                              ),
                                        ),
                                        verticalSpaceSmall,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Center(
                                  child: SizedBox(
                                    width: 350,
                                    child: Card(
                                      elevation: 12,
                                      child: LoginItems(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                            top: 16.0,
                            right: 16,
                            left: 16,
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 400,
                              child: Card(
                                child: LoginItems(),
                              ),
                            ),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginItems extends StatefulWidget {
  @override
  _LoginItemsState createState() => _LoginItemsState();
}

class _LoginItemsState extends State<LoginItems> {
  final _formKey = GlobalKey<FormState>();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  double _formProgress = 0;
  bool _obscureText = true;

  void _updateFormProgress() {
    var progress = 0.0;
    var controllers = [
      _emailTextController,
      _passwordTextController,
    ];

    for (var controller in controllers) {
      if (controller.value.text.isNotEmpty) {
        progress += 1 / controllers.length;
      }
    }

    setState(() {
      _formProgress = progress;
    });
  }

// Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInfo) => SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: () => _updateFormProgress(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AnimatedProgressIndicator(value: _formProgress),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: kIsWeb && sizeInfo.screenSize.width > 800
                          ? 60.0
                          : 50.0,
                      fontWeight: FontWeight.bold,
                      color: homeward_primary),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  bottom: 4.0,
                  right: 16.0,
                ),
                child: sizeInfo.screenSize.width > 800
                    ? null
                    : Text(
                        'Hello, Welcome back to \nhomeward !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
              ),
              verticalSpaceSmall,
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextFormField(
                  controller: _emailTextController,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: kTextFieldDecorations.copyWith(
                      labelText: 'Email', hintText: 'Enter your email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email required';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _passwordTextController,
                  obscureText: _obscureText,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: kTextFieldDecorations.copyWith(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off,
                        color: homeward_primary,
                      ),
                      onPressed: _toggle,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password required';
                    } else if (value.length < 6) {
                      return 'Minimum 6 characters';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: homeward_primary,
                    padding: EdgeInsets.all(2),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, BlogListRoute);
                      _emailTextController.clear();
                      _passwordTextController.clear();
                    }
                  },
                  icon: Icon(
                    Icons.login,
                    color: Colors.white,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                child: InkWell(
                  onTap: () async {
                    Utils.showSnackbar(context, message: 'Coming Soon');
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: homeward_primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "By proceeding, you agree to our",
                    style: Theme.of(context).textTheme.subtitle1,
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Coming Soon'),
                              ),
                            );
                          },
                        text: " \nPrivacy Policy & Terms of Services",
                        style: TextStyle(
                          color: homeward_secondary_dark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: Center(
                    child: Text(
                  "Don't have an account yet?",
                  style: Theme.of(context).textTheme.subtitle1,
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 16.0, top: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () async {
                        Utils.showSnackbar(context, message: 'Coming Soon');
                      },
                      child: Text(
                        "Create An Account",
                        style: TextStyle(
                          color: homeward_primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
