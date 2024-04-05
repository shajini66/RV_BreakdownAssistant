import 'package:flutter/material.dart';

class  mechanic_reset extends StatefulWidget {
  const mechanic_reset({super.key});

  @override
  State<mechanic_reset > createState() => _mechanic_resetState();
}

class _mechanic_resetState extends State<mechanic_reset>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           
              
              
     body:Text(
              "Reset your password ?",
              style: TextStyle(color: Colors.brown),
              ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Column(
          children: [
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Newpassword"),

            ), 
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: " Confirm Password"),
            ), 
TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Update"),
            ),  
        ),
     ),
    );       
  }
}