import 'package:flutter/material.dart';
import 'package:job_hunt_app/view/auth/Login_Screen.dart';
import 'package:job_hunt_app/view/auth/Splash_Screen.dart';

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
      home:SplaceScreen(),
    );
  }
}

