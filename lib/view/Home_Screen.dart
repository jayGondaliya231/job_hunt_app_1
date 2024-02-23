import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:text_scroll/text_scroll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> categories = [
    {
      "icon": Icons.design_services_sharp,
      "title": "Design & art developer...   ",
    },
    {
      "icon": Icons.monetization_on_outlined,
      "title": "Finance",
    },
    {
      "icon": Icons.computer_outlined,
      "title": "Developer",
    },
    {
      "icon": Icons.school_outlined,
      "title": "Teacher",
    },
  ];
  List<Map<String,dynamic>> job =[
    {
      "name":'WEB DEVELOPER',
      "company":'Alian Software',
      "experience":'2-4'
    },
    {
      "name":'FLUTTER DEVELOPER',
      "company":'Tech4Biz Solutions Pvt Ltd',
      "experience":'2-5'
    },
    {
      "name":'ANDROID DEVELOPER',
      "company":'TechTora Infotech',
      "experience":'0-2'
    },
    {
      "name":'PYTHON DEVELOPER',
      "company":'Upstox Ref Partners',
      "experience":'3-7'
    },
    {
      "name":'NODE JS DEVELOPER',
      "company":'Rockers Technologies',
      "experience":'1-3'
    },
    {
      "name":'FULL STACK DEVELOPER',
      "company":'Aarzoo Enterprise',
      "experience":'1-4'
    },
    {
      "name":'UI/UX DESIGNER',
      "company":'Dk Infoway',
      "experience":'1-2'
    },
    {
      "name":'PHP DEVELOPER',
      "company":'SNK IT Solution',
      "experience":'1-2'
    },
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
                child: Container(
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "jay".toString().toUpperCase().substring(0, 1),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "jay",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            )),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.account_balance_sharp,
                color: Colors.black,
              ),
              title: Text(
                "Company",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
              title: Text(
                "Notification",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.library_add_check_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Invite Friend",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.login,
                color: Colors.black,
              ),
              title: Text(
                "Cart",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Divider(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.profilebakery.com/wp-content/uploads/2023/03/AI-Profile-Picture.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wallpapers.com/images/hd/investment-background-ntdozfa12skxcjsj.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(h * 0.02),
                    bottomRight: Radius.circular(h * 0.02))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Find Best\nJob',
                    style: TextStyle(
                        color: Colors.white,
                        // letterSpacing: 1.5,
                        fontSize: h * 0.035,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: h * 0.06),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search the jobs',
                        hintStyle: TextStyle(fontWeight: FontWeight.w300),
                        border: InputBorder.none,
                        prefixIcon: Icon(CupertinoIcons.search)),
                  ),
                ),
                SizedBox(
                  height: h * 0.04,
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.015),
            child: Row(
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                    fontSize: h * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              children: List.generate(
                  4,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                            if (selected == 1) {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => Shopping_Screen(),
                              //     ));
                            }
                          });
                        },
                        child: Container(
                          height: h * 0.14,
                          width: w * 0.3,
                          margin: EdgeInsets.symmetric(horizontal: w * 0.02),
                          decoration: BoxDecoration(
                              color:
                                  selected == index ? Colors.blue : Colors.blue,
                              borderRadius: BorderRadius.circular(h * 0.03),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                    spreadRadius: 1.5,
                                    color: Colors.grey.shade400),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                categories[index]['icon'],
                                size: h * 0.045,
                                color: selected == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              SizedBox(height: h * 0.01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: TextScroll(
                                      categories[index]['title'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: selected == index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      velocity: Velocity(
                                          pixelsPerSecond: Offset(25, 0)),
                                      pauseBetween: Duration(seconds: 3),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              padding: EdgeInsets.all(w * 0.04),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: h * 0.17,
                  margin: EdgeInsets.symmetric(vertical: h * 0.01),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 0,
                          spreadRadius: -1,
                          offset: Offset(-4, 6),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: w * 0.02, vertical: h * 0.01),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: h * 0.095,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(h * 0.01),
                                color: Colors.white,
                                border: Border.all(
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  job[index]['company'].toString().toUpperCase().substring(0, 1),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Text("On-site"),
                          ],
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              job[index]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: h * 0.019),
                            ),
                            Text(
                              "@ ${job[index]['company']}",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: h * 0.013),
                            ),
                            Text(
                              "Experience: ${job[index]['experience'].toString()} Years",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: h * 0.013),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: h * 0.022,
                                  width: w * 0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.tealAccent,
                                    borderRadius:
                                        BorderRadius.circular(w * 0.01),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "As per Industry Standards",
                                    style: TextStyle(
                                        fontSize: h * 0.009,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                SizedBox(
                                  width: w * 0.2,
                                ),
                                Container(
                                  height: h * 0.029,
                                  width: w * 0.15,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.02),
                                      color: Colors.teal.shade300),
                                  child: Center(
                                      child: Text(
                                    "Apply",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: h * 0.015,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )
                              ],
                            ),
                            SizedBox(height: h*0.01,),
                            Container(
                              height: h * 0.001,
                              width: w * 0.65,
                              color: Colors.grey,
                              margin: EdgeInsets.only(bottom: h*0.007),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Posted on 22Feb",style: TextStyle(fontSize: h*0.013,color: Colors.grey,fontStyle: FontStyle.italic),),
                                SizedBox(
                                  width: w*0.19,
                                ),
                                Icon(Icons.favorite_border,color: Colors.red,),
                                SizedBox(
                                  width: w*0.025,
                                ),
                                Icon(Icons.person_add_outlined),
                                SizedBox(
                                  width: w*0.025,
                                ),
                                Icon(Icons.share_outlined)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
