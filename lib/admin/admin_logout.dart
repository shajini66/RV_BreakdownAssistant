import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class admin_logout extends StatefulWidget {
  const admin_logout({super.key});

  @override
  State<admin_logout> createState() => _admin_logoutState();
}

class _admin_logoutState extends State<admin_logout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            ElevatedButton(onPressed: () {}, child: Text('ok')),

          ],
        ),
      ),
    );

  }
}






