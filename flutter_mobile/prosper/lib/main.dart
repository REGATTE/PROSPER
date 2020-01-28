/*
CODE WRITTEN BY ASHOK KUMAR
GITHUB: REGATTE
THE WHOLE CODE HAS CODE WRITTEN SUCH THAT THE SCREEN SIZE CHANGES ACCORDIGLY TO THE DEVICE
COMMENTS ARE GIVEN FOR IMAGES AND FOR AUTHENTICATION POINTS
WILL EXPLAIN ALL THE WIDGETS IN COURSE OF THE BUILD

THE MAIN COLORS USED ARE
DARK BLUE: BACKGROUND: 0xFF1B2430
LIGHT BLUE: BUTTONS AND TEXT: 0XFF5DBCD2

THE IMAGES ARE IN THE FOLDER images/.
THEIR PSD FILES ARE ON THE GITHUB REPO

LOL THIS IS A PRIVATE REPO AND STILL ALL THE COMMENTING

GUYS BE HAPPY, WHOEVER IM SELLING THIS BUILD TO

*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';

//APP SETUP
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new LoginPage()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  //MOVE TO NEXT PAGE
  void navigationPage() {
    //PRESENTLY DIRECTED TO LOGIN PAGE
    // /HomeScreen is set to LoginPage() on line 31
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  //IMAGE ON THE SPLASH SCREEN
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF1B2430),
      body: new Center(
        child: new Image.asset('images/PROSPER_EDIT_1.jpg'),
      ),
    );
  }
}