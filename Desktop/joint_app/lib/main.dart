import 'package:flutter/material.dart';
import 'package:joint_app/pages/academics.dart';
import 'package:joint_app/pages/buy.dart';
import 'package:joint_app/pages/classes.dart';
import 'package:joint_app/pages/dating.dart';
import 'package:joint_app/pages/getstarted.dart';
import 'package:joint_app/pages/god.dart';
import 'package:joint_app/pages/hostel.dart';
import 'package:joint_app/pages/rest1.dart';
import 'package:joint_app/pages/seminar.dart';
import 'package:joint_app/pages/social.dart';
import 'package:joint_app/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Wlcm());
  }
}
