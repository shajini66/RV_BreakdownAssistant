import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rvba/mechanic/mech_home.dart';

class Mechanic_login extends StatefulWidget {
  const Mechanic_login({super.key});

  @override
  State<Mechanic_login> createState() => _Mechanic_loginState();
}

class _Mechanic_loginState extends State<Mechanic_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
              ),
            ],
          ),
        ),
      ),
      body: Padding(
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
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>mech_home(),));},
    child: Text('Login'))




          ],
        ),
      ),
    );
  }
}