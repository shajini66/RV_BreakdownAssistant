import 'package:flutter/material.dart';

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
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'G pay'),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'Cash on hand'),
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
