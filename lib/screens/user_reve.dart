import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rvba/screens/user_setting.dart';

class user_review extends StatefulWidget {
  const user_review({super.key});

  @override
  State<user_review> createState() => _user_reviewState();
}

class _user_reviewState extends State<user_review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color:  Color(0xffD9D9D9),),
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(60),
                color: Colors.grey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          labelText: 'Email'),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          labelText: 'Add Review'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>user_setting(),));}, child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
