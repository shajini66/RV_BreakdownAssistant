import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rvba/mechanic/mech_bottom.dart';
import 'package:rvba/mechanic/mech_home.dart';
import 'package:rvba/mechanic/mech_sign%20up.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mechanic_login extends StatefulWidget {
  const Mechanic_login({super.key});

  @override
  State<Mechanic_login> createState() => _Mechanic_loginState();
}

class _Mechanic_loginState extends State<Mechanic_login> {
  final formkey = GlobalKey<FormState>();
  var Email = TextEditingController();
  var Password = TextEditingController();
  String id = "";
  void mechlog() async {
    final mech = await FirebaseFirestore.instance
        .collection('mech Register')
        .where('Email', isEqualTo: Email.text)
        .where('Password', isEqualTo: Password.text)
        .get();
    if (mech.docs.isNotEmpty) {
      id = mech.docs[0].id;

      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);

      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return mech_bottm();
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
                  onPressed: () {
                    if(formkey.currentState!.validate()) {
                      mechlog();
                    }
                  },
                  child: Text('Login')),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return mech_signup();
                    },
                  ));
                },
                child: Text('Sign up'),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
