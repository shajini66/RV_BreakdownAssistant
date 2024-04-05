import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      Text(
        "forget password ?",
        style: TextStyle(color: Colors.white),
      ),
      body:
          Text("We will send averification code to this email or phone number"),
      TextField(
        obscureText: true,
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: "email"),
      ),
      TextField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: "Send"),
      ),
    );
  }
}
