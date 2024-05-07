import 'package:flutter/material.dart';
import 'package:rvba/screens/user_pay.dart';

class user_shedule extends StatefulWidget {
  const user_shedule({super.key});

  @override
  State<user_shedule> createState() => _user_sheduleState();
}

class _user_sheduleState extends State<user_shedule> {
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
    Navigator.push(context, MaterialPageRoute(builder: (context)=>user_pay(),));},
                   child: Text('Continue'))
                ],
              ),
            )));
  }
}
