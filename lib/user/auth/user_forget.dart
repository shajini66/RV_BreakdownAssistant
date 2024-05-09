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
      body:SingleChildScrollView(
   child:    Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "forget password ?",
            style: TextStyle(color: Colors.black,fontSize: 20),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "We will send a verification code to this email ",
            style: TextStyle(color: Colors.black,fontSize: 16),
          ),
          SizedBox(
            height: 50,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "email"),
          ),
          SizedBox(
            width: 100,
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {},
            style:ElevatedButton.styleFrom( backgroundColor: Colors.black),

            child: Text('Send'),

          ),
          SizedBox(
            height: 250,
          ),
        ],

      ),
    ));
  }
}
