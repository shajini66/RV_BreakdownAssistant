import 'package:flutter/material.dart';

class admin_select extends StatefulWidget {
  const admin_select({super.key});

  @override
  State<admin_select> createState() => _admin_selectState();
}

class _admin_selectState extends State<admin_select> {
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
        ],
      ),
    ));
  }
}
