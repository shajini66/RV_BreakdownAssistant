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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "forget password ?",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "We will send a verification code to this email ",
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "email"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Send'),
          ),
        ],
      ),
    );
  }
}
