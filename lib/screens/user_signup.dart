import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rvba/screens/user_home.dart';

class UserSignup extends StatefulWidget {
  const UserSignup({super.key});

  @override
  State<UserSignup> createState() => _UserSignupState();
}

class _UserSignupState extends State<UserSignup> {
  final formKey=GlobalKey<FormState>();
  var name=TextEditingController();
  var email=TextEditingController();
  var password=TextEditingController();

  Future<dynamic>Reg()async{
    await FirebaseFirestore.instance.collection("User Register").add({
      "UserName":name.text,
      "Email":email.text,
      "Password":password.text
    });
    print("done");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>user_home(),));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(backgroundColor: Colors.grey.shade100,
        appBar:AppBar(backgroundColor: Colors.grey.shade100,) ,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  ListView(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: name,
                validator: (value){
                  if(value!.isEmpty){
                    return "Empty";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "User name"),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "password"),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Confirm password"),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(

                onPressed: () {
                  if(formKey.currentState!.validate()){
                    Reg();
                  }
                  },

                style:ElevatedButton.styleFrom( backgroundColor: Colors.black),
                child: Text('Sign up'),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
