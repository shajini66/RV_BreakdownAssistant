import 'package:flutter/material.dart';

class user_login extends StatefulWidget {
  const user_login({super.key});

  @override
  State<user_login> createState() => _user_loginState();
}

class _user_loginState extends State<user_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          title: const Text(
            "Login",
            style: TextStyle(color: Colors.amber),
          ),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Login"),
              ),
            ],
          ),
        ));
  }
}
