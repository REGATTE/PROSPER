import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new Login()
    },
    theme: ThemeData(
      canvasColor: Color(0xFF1A2430),
      textTheme: TextTheme(body1: TextStyle(color: Color(0xFFc9a364))),
      backgroundColor: Color(0xFF1A2430),
    ),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('images/PROSPER_EDIT_1.jpg'),
      ),
    );
  }
}

