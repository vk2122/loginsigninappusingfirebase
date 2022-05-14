// ignore_for_file: prefer_const_constructors

import 'package:firebaseapp/home.dart';
import 'package:firebaseapp/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height/12,
          ),
          Text(
            "Welcome Back",
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 30,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            height: height/3,
          ),
          TextFormField(

          ),
          SizedBox(
            height: height/7,
          ),
          TextFormField(

          ),
          SizedBox(
            height: height/5,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) => HomePage())
              );
            }, 
            child: Text("Login"),
          ),
          Row(

          ),
        ],
      ),
    );
  }
}