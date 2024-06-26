import 'package:flutter/material.dart';
import 'package:rvba/screens/user_book%20copy.dart';
import 'package:rvba/screens/user_pay.dart';
import 'package:rvba/screens/user_shedule.dart';

class user_help extends StatefulWidget {
  const user_help({super.key});

  @override
  State<user_help> createState() => _user_helpState();
}

class _user_helpState extends State<user_help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Help Center'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color:  Color(0xffD9D9D9),),
          padding: EdgeInsets.all(50),
          child: Container(
            padding: EdgeInsets.all(60),
            color: Colors.grey,
            child: Column(
              children: [
                Text(
                  'How can help you',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(Icons.search),
                      labelText: 'search'),
                ),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>user_pay(),));},
                  leading: Icon(Icons.payment),
                  title: Text('Payment'),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>user_shedule(),));},
                  leading: Icon(Icons.schedule),
                  title: Text('schedule'),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>user_book(),));},
                  leading: Icon(Icons.book_online),
                  title: Text('Booking'),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
