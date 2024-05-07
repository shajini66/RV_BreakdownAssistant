import 'package:flutter/material.dart';

class admin_for extends StatefulWidget {
  const admin_for({super.key});

  @override
  State<admin_for> createState() => _AdminPageState();
}

class _AdminPageState extends State<admin_for> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        color:  Color(0xffD9D9D9),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    SizedBox(
    height: 50,
    ),
    Text(
    "forget password ?",
    style: TextStyle(color: Colors.black,fontSize: 24),
    ),
    SizedBox(
    height: 40,
    ),
    Text(
    "We will send a verification code to this email ",
    style: TextStyle(color: Colors.black,fontSize: 16),
    ),
    SizedBox(
    height: 100,
    ),
    TextFormField(
    decoration: InputDecoration(
    border: OutlineInputBorder(), labelText: "email"),
    ),
    SizedBox(
    width: 40,
    height: 100,
    ),
    ElevatedButton(
    onPressed: () {},
    style:ElevatedButton.styleFrom( backgroundColor: Colors.black),

    child: Text('Send'),

    ),
    SizedBox(
    height: 250,
    ),
    ],

    ),
    ));
    }
}