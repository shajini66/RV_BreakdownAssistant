import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
            ),
            Text(
              "forget password ?",
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Login"),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
