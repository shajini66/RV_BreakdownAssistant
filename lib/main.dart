import 'package:flutter/material.dart';
import 'package:rvba/screens/user_book.dart';
import 'package:rvba/screens/user_calling.dart';
import 'package:rvba/screens/user_cpassword.dart';
import 'package:rvba/screens/user_help.dart';
import 'package:rvba/screens/user_help2.dart';
import 'package:rvba/screens/user_lan.dart';
import 'package:rvba/screens/user_manufa.dart';
import 'package:rvba/screens/user_pay.dart';
import 'package:rvba/screens/user_pfle.dart';
import 'package:rvba/screens/user_reve.dart';
import 'package:rvba/screens/user_setting.dart';
import 'package:rvba/screens/user_shedule.dart';
import 'package:rvba/user/user_about.dart';
import 'package:rvba/user/user_logo.dart';
import 'package:rvba/user/user_logot.dart';
import 'package:rvba/user/user_picdiscri.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: user_pic(),
    );
  }
}
