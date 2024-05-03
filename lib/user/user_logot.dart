import 'package:flutter/material.dart';

class user_logot extends StatefulWidget {
  const user_logot({super.key});

  @override
  State<user_logot> createState() => _user_logotState();
}

class _user_logotState extends State<user_logot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Logout')),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Are you want to logout"),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Yes',
                        style: TextStyle(fontSize: 30),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'No',
                        style: TextStyle(fontSize: 30),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
