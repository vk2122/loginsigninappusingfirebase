import 'package:firebaseapp/login.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        centerTitle: true,
      ),
      body: Container(
        child: const Text("Forgot Pasword"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()
            )
          );
        }, 
        icon: const Icon(Icons.arrow_back),
        label: const Text("Verify")
      ),
    );
  }
}