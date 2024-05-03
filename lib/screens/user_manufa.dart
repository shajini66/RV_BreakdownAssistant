import 'package:flutter/material.dart';

class user_manufa extends StatefulWidget {
  const user_manufa({super.key});

  @override
  State<user_manufa> createState() => _user_manufaState();
}

class _user_manufaState extends State<user_manufa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/Rectangle 6.png',
            ),
          ),
        ),
        child: SingleChildScrollView(
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
              CircleAvatar(
                child: Image.asset("assets/images/Ellipse 21.png"),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: Container(
                  width: 300,
                  height: 100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(children: [
                        Text('5+ year'),
                        Text('experience'),
                        Image.asset('assets/images/Vector.png'),
                        Text('minimum fee'),
                        SizedBox(
                          height: 30,
                        )
                      ]),
                    ],
                  ),
                ),
              ),
              Container(
                  width: 400,
                  height: 600,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'All vehicle mechanic',
                      ),
                      ListTile(
                        leading: Icon(Icons.control_point),
                        title: Text('Tvs  2 wheels'),
                      ),
                      ListTile(
                        leading: Icon(Icons.control_point),
                        title: Text('Yamaha'),
                      ),
                      ListTile(
                        leading: Icon(Icons.control_point),
                        title: Text('Honda 2 wheels'),
                      ),
                      ListTile(
                        leading: Icon(Icons.control_point),
                        title: Text('Suzuki'),
                      ),
                      Text('Other service'),
                      ListTile(
                        leading: Icon(Icons.control_point),
                        title: Text('2 wheeler service'),
                      ),
                      ListTile(
                        leading: Icon(Icons.control_point),
                        title: Text('Washing'),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
