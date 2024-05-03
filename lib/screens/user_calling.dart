import 'package:flutter/material.dart';

class user_calling extends StatefulWidget {
  const user_calling({super.key});

  @override
  State<user_calling> createState() => _user_callingState();
}

class _user_callingState extends State<user_calling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/Rectangle 6.png',
            ),
          ),
        ),
        child: SingleChildScrollView(
            child: Column(
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'ringing',
                    suffixIcon: Icon(Icons.wifi_calling_3_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
