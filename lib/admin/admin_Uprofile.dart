import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rvba/admin/admin_Mprofile.dart';

import '../screens/user_manufa.dart';

class admin_upfl extends StatefulWidget {
  const admin_upfl({super.key});

  @override
  State<admin_upfl> createState() => _admin_upflState();
}

class _admin_upflState extends State<admin_upfl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            " User profile",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blueAccent,
              child: ListTile(
                leading: Image.asset('assets/images/Ellipse 24.png'),
                title: Text('Shanu,'),
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
                    ElevatedButton(onPressed: (){}, child: Text("Accept")),
                    SizedBox(
                     width:  20,
                    ),
                    ElevatedButton(onPressed: (){}, child: Text("Reject")),
                  ],
                ),
              ),
            );
          },
          itemCount: 5,
        ));
  }
}
