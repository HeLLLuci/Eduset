import 'package:eduset/Figma_course.dart';
import 'package:eduset/flutter_course_details.dart';
import 'package:eduset/protopie_details.dart';
import 'package:eduset/swift_ui_course.dart';
import 'package:eduset/welcome.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'Register.dart';
import 'android_dev_course.dart';
import 'home_screen.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduSet',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'EduSet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // return HomeScreen();
    return Welcome();
  }
}
