import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:job_hunt_app/view/auth/Login_Screen.dart';
import 'package:job_hunt_app/view/auth/Register_Screen.dart';
import 'package:job_hunt_app/view/auth/Welcome_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Welcome_Screen(),
    );
  }
}

