import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rvba/screens/user_home.dart';
import 'package:rvba/user/auth/user%20_login.dart';
import 'package:rvba/user/user_bottom.dart';

class UserSignup extends StatefulWidget {
  const UserSignup({super.key});

  @override
  State<UserSignup> createState() => _UserSignupState();
}

class _UserSignupState extends State<UserSignup> {
  final formKey = GlobalKey<FormState>();
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmpassword = TextEditingController();
  var phonenumber=TextEditingController();

  Future<dynamic> Reg() async {
    await FirebaseFirestore.instance.collection("User Register").add({
      "UserName": name.text,
      "Email": email.text,
      "Password": password.text,
      "phone number":phonenumber.text,
    });
    print("done");
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => user_login(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "User name"),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "password"),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                controller: confirmpassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm password"),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                controller: phonenumber,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "phone number"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (password.text == confirmpassword.text) {
                      Reg();
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                            "Password do not match",
                            style: TextStyle(color: Colors.red),
                          )));
                    }
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text('Sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
