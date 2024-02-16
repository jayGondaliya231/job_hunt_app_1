import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
                                  "hello"
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
                               "hi",
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/JOB HUNT 12.png'),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 15,right: 15),
            decoration:
                BoxDecoration(color: Colors.blue,
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
                Text('Hi There!',
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

              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:w*0.04,vertical: h*0.01),
            child: Row(
              children: [
                Text("Recent Job",style: TextStyle(
                  fontSize: h*0.02,
                  fontWeight: FontWeight.bold,

                ),
                ),
                Spacer(),
                Text("See More",style: TextStyle(color: Colors.grey,),)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
             padding: EdgeInsets.all(w*0.04),
             itemBuilder: (BuildContext context, int index) {
                return  Container(
                  height: h*0.1,
                  margin: EdgeInsets.symmetric(vertical: h*0.01),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.black,
                        blurRadius: 0,
                        spreadRadius: -1,
                        offset:Offset(
                            -4,6
                        ),
                      )]
                  ),
                  child: Center(child: Text("$index",style: TextStyle(fontSize: h*0.03),)),
                );
             },

              ),
          ),

        ],
      ),

    );
  }
}
