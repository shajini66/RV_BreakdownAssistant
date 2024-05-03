import 'package:flutter/material.dart';

class user_lan extends StatefulWidget {
  const user_lan({super.key});

  @override
  State<user_lan> createState() => _user_lanState();
}

class _user_lanState extends State<user_lan> {
  final List<String> selectedrole = ['English', 'Malayalam'];
  String selectedValue = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            ),
            Container(
              width: 155,
              child: DropdownButtonFormField(
                value: selectedValue,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: InputBorder.none,
                  hintText: "Language Type",
                ),
                items: selectedrole
                    .map((String e) => DropdownMenuItem<String>(
                          value: e,
                          child: Text(
                            e,
                            style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Color(0XFF1D2C6F),
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
