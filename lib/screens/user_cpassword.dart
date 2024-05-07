import 'package:flutter/material.dart';

class user_cpass extends StatefulWidget {
  const user_cpass({super.key});

  @override
  State<user_cpass> createState() => _user_cpassState();
}

class _user_cpassState extends State<user_cpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change pass word'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color:  Color(0xffD9D9D9),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Divider(
              indent: 00,
              color: Colors.black,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Current Password",
                      labelStyle: TextStyle(color: Colors.black))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: " New Password",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: " Confirm Password",
                        labelStyle: TextStyle(color: Colors.black)))),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Reset')),
          ],
        ),
      ),
    );
  }
}
