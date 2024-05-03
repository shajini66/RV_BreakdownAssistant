import 'package:flutter/material.dart';

class mechanic_changedpass extends StatefulWidget {
  const mechanic_changedpass({super.key});

  @override
  State<mechanic_changedpass> createState() => _mechanic_changepassState();
}

class _mechanic_changepassState extends State<mechanic_changedpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You are successfully changed password"),
            TextButton(onPressed: () {}, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
