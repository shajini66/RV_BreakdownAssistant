import 'package:flutter/material.dart';

class user_pic extends StatefulWidget {
  const user_pic({super.key});

  @override
  State<user_pic> createState() => _user_picState();
}

class _user_picState extends State<user_pic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/image1.png'),
                        fit: BoxFit.fill),
                    shape: BoxShape.rectangle),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(fontSize: 30),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  )),
            ],
          )),
    );
  }
}
