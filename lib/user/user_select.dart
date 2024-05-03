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
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "USER"),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "MECHANIC"),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "ADMIN"),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    ));
  }
}
