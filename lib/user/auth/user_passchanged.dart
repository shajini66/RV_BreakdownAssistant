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
      body: Column(
        children: [
          Text(
            'password  Changed? ',
            style: TextStyle(color: Colors.brown, fontSize: 20),
          ),
          Text(
            "You are successfully changed password",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Sign up'),
          ),
        ],
      ),
    );
  }
}
