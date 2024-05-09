import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rvba/mechanic/mech_pay.dart';

import '../screens/user_shedule.dart';

class mech_serv extends StatefulWidget {
  const mech_serv({super.key});

  @override
  State<mech_serv> createState() => _mech_servState();
}

class _mech_servState extends State<mech_serv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Booking",
            ),
          ],
        ),
      ),
    ),

    body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color:  Color(0xffD9D9D9),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            CircleAvatar(
              child: Image.asset("assets/images/Ellipse 21.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            ),
            Container(
                width: 400,
                height: 400,
                color: Colors.grey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Manufacture',
                    ),
                    ListTile(
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.chevron_down)),
                      leading: Image.asset(
                        'assets/images/Frame (1).png',
                        width: 20,
                      ),
                      title: Text('Vehicle name'),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/Frame (2).png',
                        width: 20,
                      ),
                      title: Text('Rejistration number'),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/Frame (3).png',
                        width: 20,
                      ),
                      title: Text('Kilometers'),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/Frame (4).png',
                        width: 20,
                      ),
                      title: Text('Manufature type'),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/Frame (5).png'),
                      title: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Describe your complaint'),
                      ),


                        ),


                  ],
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>mech_pay()));
            }, child: Text('Book'))
          ],
        ),
      ),
    ),
    );
  }
}


