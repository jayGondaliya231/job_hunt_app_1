import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_hunt_app/view/auth/Login_Screen.dart';

import '../../common_Widget/common_button.dart';



class SplaceScreen extends StatefulWidget {
  const SplaceScreen({Key? key}) : super(key: key);

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  final pagecontroller = PageController(initialPage: 0, keepPage: true);

  void pageChanged(int index) {
    setState(() {
      selected = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      selected = index;
      pagecontroller.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  List<Map<String, dynamic>> item = [
    {
      "image": 'assets/images/S1.png',
      "title": 'Office Furniture\'s',
      "title1":
      'Use filler text that has been edited for length an\n  format match on a the characteristics of real\n          content as closely as possible.',
    },
    {
      "image": 'assets/images/S2.png',
      "title": 'Relaxing Furntures',
      "title1":
      'Use filler text where helps your desing process, but use\nreal content you’ve got it as long as it does distract\nand slow down yout desing process.',
    },
    {
      "image": 'assets/images/S3.png',
      "title": 'Home Furntures',
      "title1":
      'Desing is an evolutionary process , and filler text is just\none tool in your progress-pushing arsenal.',
    },
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: height * 0.015),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.045,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login_Screen(),
                            ));
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.02),
                      ))
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: height * 0.78,
                    width: double.infinity,
                    color: Colors.white,
                    child: PageView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      controller: pagecontroller,
                      onPageChanged: (value) {
                        pageChanged(value);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: height * 0.07,
                            ),
                            Image.asset(
                              item[index]['image'],
                            ),
                            SizedBox(
                              height: height * 0.05,
                            ),
                            Column(
                              children: [
                                Text(
                                  item[index]['title'],
                                  style: TextStyle(
                                    fontSize: height * 0.03,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.04,
                                ),
                                Text(
                                  item[index]['title1'],
                                  style: TextStyle(
                                    color: Color(0xffD6D6D6),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: height * 0.73,
                    left: width * 0.38,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                              (index) => Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.02),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: selected == index
                                  ? SvgPicture.asset(
                                  "assets/images/scrooll_bullet.svg")
                                  : CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: height * 0.007,
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: CommonButton(
                  color: Colors.green.shade700,
                    text: selected == 2 ? "Get Started" : "Next",
                    onPressed: () {
                      if (selected != 2) {
                        setState(() {
                          selected++;
                          bottomTapped(selected);
                        });
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_Screen()));
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
