// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebaseapp/login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController conpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height/7,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height / 15,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 12, 0),
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
              margin: EdgeInsets.fromLTRB(15, 15, 12, 0),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter Name',
                  labelText: 'Name',
                  /*errorText: "Incorrect Password",*/
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 12, 0),
              child: TextFormField(
                controller: contactController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter Contact Number',
                  labelText: 'Phone Number',
                  /*errorText: "Incorrect Password",*/
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 12, 0),
              child: TextFormField(
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter Password',
                  labelText: 'Password',
                  /*errorText: "Incorrect Password",*/
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 12, 0),
              child: TextFormField(
                controller: conpassController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Re-Enter Password',
                  labelText: 'Confirm Password',
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
              children: [
                Text(
                  "Already Have an Account ?",
                  style: TextStyle(fontStyle: FontStyle.normal, fontSize: 13),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Log In",
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
            SizedBox(
              height: height/15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                "Proceed",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        )
      ),
    );
  }
}