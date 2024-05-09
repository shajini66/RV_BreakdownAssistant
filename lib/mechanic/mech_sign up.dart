import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rvba/mechanic/mech_home.dart';

class mech_signup extends StatefulWidget {
  const mech_signup({super.key});

  @override
  State<mech_signup> createState() => _mech_signupState();
}

class _mech_signupState extends State<mech_signup> {
  final formKey = GlobalKey<FormState>();
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmpassword = TextEditingController();

  Future<dynamic> Register() async {
    await FirebaseFirestore.instance.collection("mech Register").add({
      "UserName": name.text,
      "Email": email.text,
      "Password": password.text
    });
    print("done");
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => mech_home(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "User name"),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "password"),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                controller: confirmpassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm password"),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (password == confirmpassword) {
                      Register();
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                            "Password do not match",
                            style: TextStyle(color: Colors.red),
                          )));
                    }
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text('Sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



