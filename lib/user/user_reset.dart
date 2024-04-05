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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Column(children: [
          Row(
            children: [
              Text(
                "Reset your password ?",
                style: TextStyle(color: Colors.brown, fontSize: 24),
              ),
            ],
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "New password"),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: " Confirm Password"),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Update"),
          ),
        ]),
      ),
    );
  }
}
