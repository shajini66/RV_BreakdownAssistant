import 'package:flutter/material.dart';
import 'package:rvba/admin/admin_Mprofile.dart';
import 'package:rvba/admin/admin_Uprofile.dart';

class admin_select extends StatefulWidget {
  const admin_select({super.key});

  @override
  State<admin_select> createState() => _admin_selectState();
}

class _admin_selectState extends State<admin_select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => admin_upfl(),
                  ));
            },
            child: Text('USER MANAGE'),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => admin_Mpfle(),
                  ));
            },
            child: Text('MECHANIC MANAGE'),
          ),
        ],
      ),
    ));
  }
}
