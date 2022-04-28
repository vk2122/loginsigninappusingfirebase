import 'package:flutter/material.dart';
import 'package:loginsignup/login.dart';
import 'package:loginsignup/register.dart';

void main() {
  runApp(MaterialApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LoginSignUp",
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login' : (context) => LoginPage(),
        'register' : (context) => RegisterPage(),
      },
    );
  }
}