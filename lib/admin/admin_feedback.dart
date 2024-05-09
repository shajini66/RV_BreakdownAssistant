import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rvba/admin/admin_noti.dart';

class admin_feed extends StatefulWidget {
  const admin_feed({super.key});

  @override
  State<admin_feed> createState() => _admin_feedState();
}

class _admin_feedState extends State<admin_feed> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black),
                                  child: Text('Delete'),
                                ),
                                SizedBox(
                                  height: 50,
                                ),

                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => admin_not(),
                                        ));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black),
                                  child: Text('Send'),
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







