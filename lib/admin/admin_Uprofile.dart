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
      body:  Container(
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

              SizedBox(height: 25),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>admin_Mpfle(),));},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.50),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          child: Image.asset('assets/images/Ellipse 24.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shanu,'),
                            Text('kottapuram'),
                            Text(' 8223561013'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.call),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        child: Image.asset('assets/images/Ellipse 26.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Asique,'),
                          Text('pulikkal'),
                          Text(' 8223561445'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.call),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Delete',
                        style: TextStyle(fontSize: 20),
                      )),

              SizedBox(
                height: 50,
              ),
            ]),
          ],
        ),
      ),
    )));
  }
}



