import 'dart:async';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'Auth/Auth_service.dart';

AuthService appAuth = new AuthService();

Future<void> main() async {
  // Set default home.
  Widget _defaultHome = new LoginPage();

  // Get result of the login function.
 bool _result = await appAuth.login();
  if (_result) {
    _defaultHome = new HomePage();
 }
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new LoginPage(),
      '/login': (BuildContext context) => new LoginPage()
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

