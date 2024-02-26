import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:job_hunt_app/view/BottomBar.dart';
import 'package:job_hunt_app/view/Home_Screen.dart';
import 'package:job_hunt_app/view/auth/Register_Screen.dart';
import 'package:job_hunt_app/view/auth/Welcome_Screen.dart';
import 'package:job_hunt_app/view/auth/selection_screen.dart';

import 'Controller/controller.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home:Welcome_Screen(),
    );
  }
  Controller counterController = Get.put(Controller());
}

