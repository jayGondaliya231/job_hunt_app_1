import 'package:flutter/material.dart';

class Register_screen extends StatefulWidget {
  const Register_screen({super.key});

  @override
  State<Register_screen> createState() => _Register_screenState();
}

class _Register_screenState extends State<Register_screen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            SizedBox(
              height: h * 0.05,
            ),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0wRfQ96Bh2OhRFjS6KZ5SMSOHOcP2E7dBSQ&usqp=CAU"),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              "Sign up to find work you",
              style: TextStyle(
                fontSize: h * 0.03,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "love",
              style: TextStyle(
                fontSize: h * 0.03,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              height: h*0.05,
              width: w/1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(h*0.02),
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  Container(
                      height: h*.02,
                      width: w*0.3,
                      child: Image.asset("asset/images/WIN_20231024_15_12_10_Pro.jpg",height: 2,width: 2,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
