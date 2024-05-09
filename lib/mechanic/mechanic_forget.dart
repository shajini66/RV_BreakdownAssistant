import 'package:flutter/material.dart';

class mechanic_forget extends StatefulWidget {
  const mechanic_forget({super.key});

  @override
  State<mechanic_forget> createState() => _mechanic_forgetState();
}

class _mechanic_forgetState extends State<mechanic_forget> {
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
