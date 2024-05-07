import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rvba/screens/user_shedule.dart';

class user_book extends StatefulWidget {
  const user_book({super.key});

  @override
  State<user_book> createState() => _user_bookState();
}

class _user_bookState extends State<user_book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color:  Color(0xffD9D9D9),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Divider(
                indent: 00,
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                child: Image.asset("assets/images/Ellipse 21.png"),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              ),
              Container(
                  width: 400,
                  height: 400,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Manufacture',
                      ),
                      ListTile(
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.chevron_down)),
                        leading: Image.asset(
                          'assets/images/Frame (1).png',
                          width: 20,
                        ),
                        title: Text('Vehicle name'),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (2).png',
                          width: 20,
                        ),
                        title: Text('Rejistration number'),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (3).png',
                          width: 20,
                        ),
                        title: Text('Kilometers'),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (4).png',
                          width: 20,
                        ),
                        title: Text('Manufature type'),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset('assets/images/Frame (5).png'),
                        title: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Describe your complaint'),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>user_shedule()));
              }, child: Text('Book'))
            ],
          ),
        ),
      ),
    );
  }
}
