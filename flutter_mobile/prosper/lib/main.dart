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
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }
  //FUNCTION
  @override
  void initState() {
    super.initState();
    startTime();
  }

  //IMAGE
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