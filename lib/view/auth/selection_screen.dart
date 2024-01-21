import 'package:flutter/material.dart';

class Selection_screen extends StatefulWidget {
  const Selection_screen({super.key});

  @override
  State<Selection_screen> createState() => _Selection_screenState();
}

class _Selection_screenState extends State<Selection_screen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.073),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Continue as",
              style:
                  TextStyle(fontSize: h * 0.045, fontWeight: FontWeight.bold),
            ),
            Text(
              "To continue to the next page, please \nselect which one you are",
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
            Container(
              height:h*0.115,
              decoration: BoxDecoration(
                color: Colors.white,
                border:Border.all(color: Colors.blue,width: 2),
                borderRadius: BorderRadius.circular(h*0.02),
              ),
              child: Row(
                children: [
                  Icon(Icons.account_circle_rounded,color: Colors.blue,size: h*0.05,)
                  Icon(Icons.circle_,color: Colors.blue,size: h*0.05,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
