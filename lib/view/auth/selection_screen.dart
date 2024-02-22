import 'package:flutter/material.dart';
import 'package:job_hunt_app/common_Widget/common_button.dart';
import 'package:job_hunt_app/view/Home_Screen.dart';
import 'package:job_hunt_app/view/auth/Login_Screen.dart';
import 'package:job_hunt_app/view/auth/Register_Screen.dart';

class Selection_screen extends StatefulWidget {
  const Selection_screen({super.key});

  @override
  State<Selection_screen> createState() => _Selection_screenState();
}

class _Selection_screenState extends State<Selection_screen> {
  List<Map<String, dynamic>> item = [
    {
      "icon": Icons.account_circle_rounded,
      "title": "Freelancer",
      "subtitle": "Find your dream job and\nbuild your career",
    },
    {
      "icon": Icons.business_outlined,
      "title": "Company   ",
      "subtitle": "Recruit great employees\nquickly and easily",
    },
  ];

  int select = 0;
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
        padding: EdgeInsets.symmetric(horizontal: w * 0.073,vertical: h * 0.03),
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
            SizedBox(
              height: h * 0.03,
            ),
            Column(
              children: List.generate(
                2,
                    (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      select = index;
                    });
                  },
                  child: Container(
                    height: h * 0.115,
                    margin: EdgeInsets.symmetric(vertical: h * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(h * 0.02),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                      child: Row(
                        children: [
                          Icon(
                            item[index]['icon'],
                            color: Colors.blue,
                            size: h * 0.05,
                          ),
                          SizedBox(
                            width: w * 0.04,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item[index]['title'],
                                style: TextStyle(
                                    fontSize: h * 0.025,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                item[index]['subtitle'],
                                style: TextStyle(
                                    color: Colors.grey, fontSize: h * 0.015),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: w * 0.12,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: select != index
                                  ? Icon(Icons.circle_outlined)
                                  : Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            CommonButton(
              color: Colors.blue.shade600,
              text: "Continue",
              onPressed: () {
                setState(() {
                  if (select == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login_Screen(),
                        ));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register_screen(),
                        ));
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
