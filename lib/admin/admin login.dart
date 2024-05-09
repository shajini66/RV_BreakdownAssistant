import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rvba/admin/admin_Uprofile.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {


  Adlogin() {
    if (Email.text == 'admin@gmail.com' && Password.text == '1234') {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return admin_upfl();
        },
      ));
    }
  }
  final formkey=GlobalKey<FormState>();
  var Email=TextEditingController();
  var Password=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
    child:  Scaffold(
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
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {Adlogin();},
              child: Text('Login'),
            ),
            SizedBox(
              height: 40,
            ),

          ],
        ),
      ),

        ),
    ));
  }
}
