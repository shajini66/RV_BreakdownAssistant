import 'package:flutter/material.dart';

class user_setting extends StatefulWidget {
  const user_setting({super.key});

  @override
  State<user_setting> createState() => _user_settingState();
}

class _user_settingState extends State<user_setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/Rectangle 6.png',
            ),
          ),
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
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (7).png',
                          width: 20,
                        ),
                        title: Text('Language'),
                        trailing: Image.asset(
                          'assets/images/Frame (14).png',
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (8).png',
                          width: 20,
                        ),
                        title: Text('Change password'),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (9).png',
                          width: 20,
                        ),
                        title: Text('Help'),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (10).png',
                          width: 20,
                        ),
                        title: Text('About Us'),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (11).png',
                          width: 20,
                        ),
                        title: Text('Profile'),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/Frame (13).png',
                          width: 20,
                        ),
                        title: Text('Logout'),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Book')),
            ],
          ),
        ),
      ),
    );
  }
}
