import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          title: const Text(
            "Login",

            style: TextStyle(color: Colors.black),
          ),

          backgroundColor: Colors.grey,
        ),
      body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color:  Color(0xffD9D9D9),
      ),
     child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'forget password',
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
            SizedBox(
              height: 40,
            ),

          ],
        ),
      ),

        ),
    );
  }
}
