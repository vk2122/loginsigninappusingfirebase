// ignore_for_file: unused_import

import 'package:firebaseapp/forgotpass.dart';
import 'package:firebaseapp/login.dart';
import 'package:firebaseapp/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FirebaseApp",
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
        'forgotpass':(context) => ForgotPass(),
        /*'splash':(context) => ,*/
      },
    );
  }
}