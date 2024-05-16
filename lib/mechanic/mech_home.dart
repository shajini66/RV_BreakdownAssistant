import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mech_home extends StatefulWidget {
  const mech_home({super.key});

  @override
  State<mech_home> createState() => _mech_homeState();
}

class _mech_homeState extends State<mech_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "profile",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
        ),
        body:  Container(
          // width: double.infinity,
          // height: double.infinity,
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
                Text(
                  'Near by mechanic',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: () {},
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
                            child: Image.asset('assets/images/Ellipse 21.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Arjun,'),
                              Text('user_pfle'),
                              Text(' 8223561220'),
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
                          child: Image.asset('assets/images/Ellipse 21.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Arjun,'),
                            Text('user_pfle'),
                            Text(' 8223561220'),
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
                          child: Image.asset('assets/images/Ellipse 21.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Arjun,'),
                            Text('user_pfle'),
                            Text(' 8223561220'),
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(fontSize: 30),
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(fontSize: 30),
                        )),
                  ],
                ),
              ],
              ),
            ),
          ),
        ));
  }
}
