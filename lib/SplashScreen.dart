import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


import 'Signin.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: LoginPage(),
      image: Image.asset(
          'images/new.gif'),
      backgroundColor: Colors.white,
      photoSize: 200.0,
      loaderColor: Colors.white,
    );
  }
}

