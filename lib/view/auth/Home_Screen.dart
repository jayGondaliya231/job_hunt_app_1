import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_hunt_app/view/auth/RecentJob_Screen.dart';

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
      appBar: AppBar(
        leading: Icon(Icons.menu),
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
          Expanded(
            child: ListView(
             padding: EdgeInsets.only(top: 15),
             children: [
              ListTile(
                title: Text('Recent Jobs',style: Theme.of(context).textTheme.titleLarge),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text('see more'),
                ),
              ),
               SizedBox(
                 height: h * 0.2,
                 child: PageView(
                   children: [
                     RecentJobScreen(),
                   ],
                 ),
               )
            ],
            ),
          ),
        ],
      ),
    );
  }
}
