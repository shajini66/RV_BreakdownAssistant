import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text(
          "forget password ?",
          style: TextStyle(color: Colors.white),
        ),
        Text(''),
        TextField(
          obscureText: true,
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: "email"),
        ),
        TextField(
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: "Send"),
        ),
      ],
    ));
  }
}
