import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mech_pay.dart';

class mech_shedule extends StatefulWidget {
  const mech_shedule({super.key});

  @override
  State<mech_shedule> createState() => _mech_sheduleState();
}

class _mech_sheduleState extends State<mech_shedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color:  Color(0xffD9D9D9),
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
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_month),
                            hintText: 'Choose your date',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                  SizedBox(height: 40),
                  Text('Choose your slot',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('9.00 am')),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('10.30 am'))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('11.00 am')),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('12.00 pm')),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('11.00 am')),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('12.00 pm'))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mech_pay(),));},
                      child: Text('Continue'))
                ],
              ),
            )));
  }
}




