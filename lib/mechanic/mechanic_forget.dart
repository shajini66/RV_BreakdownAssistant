import 'package:flutter/material.dart';

class mechanic_forget extends StatefulWidget {
  const mechanic_forget({super.key});

  @override
  State<mechanic_forget> createState() => _mechanic_forgetState();
}

class _mechanic_forgetState extends State<mechanic_forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "forget password ?",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "We will send averification code to this email ",
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "email"),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(onPressed: () {}, child: Text('Send'))
        ],
      ),
    );
  }
}
