import 'package:flutter/material.dart';
import 'package:rvba/screens/user_pfle.dart';

class user_problem extends StatefulWidget {
  const user_problem({super.key});

  @override
  State<user_problem> createState() => _user_problemState();
}

class _user_problemState extends State<user_problem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        color:  Color(0xffD9D9D9),
    ),
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
    child: SingleChildScrollView(
    child: Column(children: [
    SizedBox(
    height: 80,
    ),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Enter Your Problems'),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: ""),
          ),
      SizedBox(
        width: 40,
        height: 30,
      ),
      TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.location_city),
            border: OutlineInputBorder(), labelText: "Location"),
      ),
      SizedBox(
        height:50,
      ),
      ElevatedButton(

        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>user_pfle(),));},

        style:ElevatedButton.styleFrom( backgroundColor: Colors.black),
        child: Text('Submit'),

      ),
    ],
    ),
    ))));
  }
}
