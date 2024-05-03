import 'package:flutter/material.dart';

class user_about extends StatefulWidget {
  const user_about({super.key});

  @override
  State<user_about> createState() => _user_aboutState();
}

class _user_aboutState extends State<user_about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        title: const Text(
          "ABOUT US",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Center(
          child: Column(
            children: [
              Text(
                " Remote vehicle breakdown assistance services provide help to drivers who experience vehicle trouble on the road, especially in remote areas. These services can be particularly useful when you're stranded and unsure of how to get help. They typically offer a variety of services.",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 40,
              ),
              Text("Everywhere Anytime"),
              Text("Assistance for your  Vehicle"),
            ],
          ),
        ),
      ),
    );
  }
}
