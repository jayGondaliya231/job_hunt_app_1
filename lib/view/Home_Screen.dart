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
                  child:  GestureDetector(
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
                                  "jay"
                                      .toString()
                                      .toUpperCase()
                                      .substring(0, 1),
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
                               "Jay",
                                style: TextStyle(
                                    color: Colors.black,),
                              )
                            ],
                          ),
                        ),

                )),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: (){},
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
              padding:  EdgeInsets.only(left: 10, right: 10, top: 10),
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
              padding:  EdgeInsets.only(left: 10, right: 10, top: 10),
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
              padding:  EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: (){},
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
        title: Text("Home",style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.profilebakery.com/wp-content/uploads/2023/03/AI-Profile-Picture.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40,left: 20,right: 20),
            decoration:
                BoxDecoration(color: Colors.blue,
                image: DecorationImage(image: NetworkImage("https://wallpapers.com/images/hd/investment-background-ntdozfa12skxcjsj.jpg"),fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                  bottomLeft:
                    Radius.circular(h * 0.02),
                  bottomRight: Radius.
                    circular(h * 0.02)
                )
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Find Best\nJob',
                    style:TextStyle(
                        color: Colors.white,
                        // letterSpacing: 1.5,
                        fontSize: h*0.035,
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
                SizedBox(height: h*0.04,),

              ],            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:w*0.04,vertical: h*0.015),
            child: Row(
              children: [
                Text("Category",style: TextStyle(
                  fontSize: h*0.02,
                  fontWeight: FontWeight.bold,

                ),
                ),
                Spacer(),
                Text("View All",style: TextStyle(color: Colors.grey,),)
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
                      margin: EdgeInsets.symmetric(horizontal: w*0.02),
                      decoration: BoxDecoration(
                          color: selected == index
                              ? Colors.blue
                              : Colors.blue,
                          borderRadius:
                          BorderRadius.circular(h * 0.03),
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
                          Icon(categories[index]['icon'],size: h*0.045,color: selected==index?Colors.white:Colors.black,),
                          SizedBox(
                            height: h * 0.01
                          ),
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
                                  velocity: Velocity(pixelsPerSecond: Offset(25, 0)),
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
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 20,
          //    padding: EdgeInsets.all(w*0.04),
          //    itemBuilder: (BuildContext context, int index) {
          //       return  Container(
          //         height: h*0.1,
          //         margin: EdgeInsets.symmetric(vertical: h*0.01),
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             border: Border.all(
          //               color: Colors.black,
          //               width: 2,
          //             ),
          //             boxShadow: [BoxShadow(
          //               color: Colors.black,
          //               blurRadius: 0,
          //               spreadRadius: -1,
          //               offset:Offset(
          //                   -4,6
          //               ),
          //             )]
          //         ),
          //         child: Center(child: Text("$index",style: TextStyle(fontSize: h*0.03),)),
          //       );
          //    },
          //
          //     ),
          // ),

        ],
      ),

    );
  }
}
