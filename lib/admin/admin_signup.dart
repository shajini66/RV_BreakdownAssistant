import 'package:flutter/material.dart';

class admin_signup extends StatefulWidget {
  const admin_signup({super.key});

  @override
  State<admin_signup> createState() => _admin_signupState();
}

class _admin_signupState extends State<admin_signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child:  Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "User name"),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Email"),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "password"),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Confirm password"),
          ),
          ElevatedButton(
            onPressed: () {},
            style:ElevatedButton.styleFrom( backgroundColor: Colors.black),
            child: Text('Sign up'),
          ),
        ],
      ),
    ),
    );
  }
}
