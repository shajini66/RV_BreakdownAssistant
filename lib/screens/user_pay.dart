import 'package:flutter/material.dart';
import 'package:rvba/screens/user_reve.dart';

class user_pay extends StatefulWidget {
  const user_pay({super.key});

  @override
  State<user_pay> createState() => _user_payState();
}

class _user_payState extends State<user_pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('payment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'G pay'),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Cash on hand'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>user_review(),));}, child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
