// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, deprecated_member_use, unused_import, avoid_print

import 'package:firebaseapp/forgotpass.dart';
import 'package:firebaseapp/home.dart';
import 'package:firebaseapp/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height/5,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height / 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
              child: TextFormField(
                controller: userController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter Username',
                  labelText: 'Username',
                  /*errorText: "Incorrect Password",*/
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
              child: TextFormField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Password',
                  labelText: 'Enter Password',
                  /*errorText: "Incorrect Password",*/
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Don't Have an Account ?",
                  style: TextStyle(fontStyle: FontStyle.normal, fontSize: 13, fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    "Sign Up!",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ),
                SizedBox(
                  width: width / 30,
                ),
              ],
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => ForgotPass())
                );
              }, 
              child: Text(
                "Forgot Password",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: height/15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
