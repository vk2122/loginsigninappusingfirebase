// ignore_for_file: avoid_unnecessary_containers

import 'package:firebaseapp/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Container(
        child: const Center(
          child: Text("Login Page")
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => RegisterPage()
            ),
          );
        },
        icon: const Icon(Icons.arrow_back),
        label: const Text("Register"),
      ),
    );
  }
}