import 'package:flutter/material.dart';

class user_select extends StatefulWidget {
  const user_select({super.key});

  @override
  State<user_select> createState() => _user_selectState();
}

class _user_selectState extends State<user_select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "USER"),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "MECHANIC"),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "ADMIN"),
          ),
        ],
      ),
    ));
  }
}
