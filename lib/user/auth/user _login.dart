import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rvba/screens/user_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../screens/user_signup.dart';
import '../user_bottom.dart';

class user_login extends StatefulWidget {
  const user_login({super.key});

  @override
  State<user_login> createState() => _user_loginState();
}

class _user_loginState extends State<user_login> {
  final formkey = GlobalKey<FormState>();
  var Email = TextEditingController();
  var Password = TextEditingController();
  String id = "";
  void Userlog() async {
    final user = await FirebaseFirestore.instance
        .collection('User Register')
        .where('Email', isEqualTo: Email.text)
        .where('Password', isEqualTo: Password.text)

        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;

      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);

      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return uer_bottm();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "Email and password invalid",
            style: TextStyle(color: Colors.red),
          )));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
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
              TextFormField(
                controller: Email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                controller: Password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
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
                onPressed: (){
                  if(formkey.currentState!.validate()){
                    Userlog();
                  }
                },
                child: Text('Login'),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return UserSignup();
                    },
                  ));
                },
                child: Text('Sign up'),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
