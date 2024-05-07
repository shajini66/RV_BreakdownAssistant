import 'package:flutter/material.dart';

class user_passchanged extends StatefulWidget {
  const user_passchanged({super.key});

  @override
  State<user_passchanged> createState() => _user_passchangedState();
}

class _user_passchangedState extends State<user_passchanged>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
