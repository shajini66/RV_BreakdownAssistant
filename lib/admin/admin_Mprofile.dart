import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rvba/admin/admin_feedback.dart';

class admin_Mpfle extends StatefulWidget {
  const admin_Mpfle({super.key});

  @override
  State<admin_Mpfle> createState() => _admin_MpfleState();
}

class _admin_MpfleState extends State<admin_Mpfle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Near by mechanic",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blueAccent,
              child: ListTile(
                leading: Image.asset('assets/images/Ellipse 21.png'),
                title: Text('Arjun,'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('kottapuram'),
                    Text(' 8223561013'),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Accept")),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Reject")),
                  ],
                ),
              ),
            );
          },
          itemCount: 5,
        ));
  }
}