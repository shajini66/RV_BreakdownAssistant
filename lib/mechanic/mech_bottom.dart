import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rvba/mechanic/mech_home.dart';
import 'package:rvba/mechanic/mech_pay.dart';
import 'package:rvba/mechanic/mech_profile.dart';
import 'package:rvba/screens/user_setting.dart';

import '../user/user_profile.dart';

class mech_bottm extends StatefulWidget {
  const mech_bottm({super.key});

  @override
  State<mech_bottm> createState() => _mech_bottmState();
}

class _mech_bottmState extends State<mech_bottm> {
  int currentindex = 0;
  final pages = [
    const mech_home(),
    const mech_pfl(),
    const mech_pay(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(""),
        leading:  InkWell(onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => user_setting()
              )
          );
        },
            child: Icon(Icons.menu)),),
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (newIndex) {
          setState(() {
            currentindex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person_crop_circle_fill,
                color: Colors.black,
              ),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.payments,
                color: Colors.black,
              ),
              label: 'pay'),
        ],
        selectedItemColor: Color.fromRGBO(191, 68, 116, 1),

        unselectedItemColor: Color.fromRGBO(143, 154, 163, 1),
        selectedLabelStyle: TextStyle(color: Color.fromRGBO(191, 68, 116, 1)),

      ),
    );
  }
}













