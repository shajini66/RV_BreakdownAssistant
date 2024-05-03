import 'package:flutter/material.dart';

class user_quote extends StatefulWidget {
  const user_quote({super.key});

  @override
  State<user_quote> createState() => _user_quoteState();
}

class _user_quoteState extends State<user_quote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "I AM HERE BECAUSE YOU BROKE IT",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
