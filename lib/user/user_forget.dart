import 'package:flutter/material.dart';

class user_forget extends StatefulWidget {
  const user_forget({super.key});

  @override
  State<user_forget> createState() => _user_forgetState();
}

class _user_forgetState extends State<user_forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "forget password ?",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "We will send averification code to this email or phone number",
      ),
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
