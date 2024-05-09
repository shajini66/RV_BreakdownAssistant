import 'package:flutter/material.dart';
import 'package:rvba/screens/user_book%20copy.dart';
import 'package:rvba/screens/user_shedule.dart';

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
          color: Color(0xffD9D9D9),
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
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: Container(
                  width: 300,
                  height: 30,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => user_book(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black),
                            child: Text('Quick service'),
                          ),
SizedBox(
  height: 50,
),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => user_shedule(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: Text('Schedule'),
                      ),

        ]

                  ),
            ],
          ),
        ),
  ]),
    )));
  }
}
