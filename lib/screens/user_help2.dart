import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class user_help2 extends StatefulWidget {
  const user_help2({super.key});

  @override
  State<user_help2> createState() => _user_help2State();
}

class _user_help2State extends State<user_help2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help center'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text("How can we help ?"),
              SizedBox(
                height: 40,
              ),
              Divider(
                indent: 00,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
              SizedBox(height: 20, width: 20),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text('Payment'),
              ),
              Divider(
                indent: 00,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text('sheduling'),
              ),
              Divider(
                indent: 00,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Booking'),
              ),
              Divider(
                indent: 00,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
