import 'package:flutter/material.dart';

class Register_screen extends StatefulWidget {
  const Register_screen({super.key});

  @override
  State<Register_screen> createState() => _Register_screenState();
}

class _Register_screenState extends State<Register_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: SizedBox(
          height: 40,
          child: TextFormField(
          
            decoration: InputDecoration(
              filled: true,
              //fillColor: Colors.blue,
                contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 13),
              hintText: "Search Job Here...",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                gapPadding: 50,
                borderRadius: BorderRadius.circular(30),

              )
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("JOB HUNT"),

          ],
        ),
      ),
    );
  }
}
