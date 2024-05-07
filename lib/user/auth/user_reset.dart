import 'package:flutter/material.dart';

class user_reset extends StatefulWidget {
  const user_reset({super.key});

  @override
  State<user_reset> createState() => _user_resetState();
}

class _user_resetState extends State<user_reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                "Reset your password ?",
                style: TextStyle(color: Colors.brown, fontSize: 20),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "New password"),
          ),
          SizedBox(
            height: 60,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: " Confirm Password"),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {},
            style:ElevatedButton.styleFrom( backgroundColor: Colors.black),
            child: Text('Update',style: TextStyle(color: Colors.white, fontSize: 24)),

            ),

        ]),
      ),
    );
  }
}
