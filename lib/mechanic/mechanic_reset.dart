import 'package:flutter/material.dart';

class mechanic_reset extends StatefulWidget {
  const mechanic_reset({super.key});

  @override
  State<mechanic_reset> createState() => _mechanic_resetState();
}

class _mechanic_resetState extends State<mechanic_reset>
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
