import 'package:flutter/material.dart';

class mechanic_changedpass extends StatefulWidget {
  const mechanic_changedpass({super.key});

  @override
  State<mechanic_changedpass> createState() => _mechanic_changepassState();
}

class _mechanic_changepassState extends State<mechanic_changedpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.all(16.0),
        child:
        Column(
          children: [

            Text(
              'password  Changed? ',
              style: TextStyle(color: Colors.brown, fontSize: 24),
            ),

            SizedBox(
              height: 100,
            ),

            Text(
              "You are successfully changed  password",

              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height:40 ,
            ),
            Image.asset('assets/images/Approval.png'),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {},
              style:ElevatedButton.styleFrom( backgroundColor: Colors.black),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );

  }
}