// ignore_for_file: prefer_const_constructors

import 'package:firebaseapp/login.dart';
import 'package:firebaseapp/register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context) => LoginPage())
                  );
                }, 
                child: Text(
                  "Login Page",
                  style: TextStyle(fontSize: 20),
                )
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context) => RegisterPage())
                  );
                }, 
                child: Text(
                  "Register Page",
                  style: TextStyle(fontSize: 20),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}