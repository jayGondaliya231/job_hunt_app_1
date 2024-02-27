import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_hunt_app/view/ChatList_User.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'Profiles_Screen.dart';
import 'Home_Screen.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  var _currentIndex = 0;
  List screen = [
    HomeScreen(),
   ChatListUser(),
    Center(
        child: Text(
      "Save",
      style: TextStyle(fontSize: 30),
    )),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        bottomNavigationBar:
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          // backgroundColor: Theme.of(context).colorScheme.background,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              // backgroundColor: Colors.blue,
            ),BottomNavigationBarItem(
              icon:Icon(Icons.message_outlined),
              label: 'Message',
              // backgroundColor: Colors.blue,
            ),BottomNavigationBarItem(
              icon: Icon(Icons.save_alt),
              label: 'Save',
              // backgroundColor: Colors.blue,
            ),BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: 'Profile',
              // backgroundColor: Colors.blue,
            ),
          ],
        ),
        body: screen[_currentIndex],
      ),
      onWillPop: () => _onBackButtonPressed(context),
      );

        // PersistentTabView(
        //   context,
        //   screens: [
        //     HomeScreen(),
        //     Center(
        //         child: Text(
        //       "Message",
        //       style: TextStyle(fontSize: 30),
        //     )),
        //     Center(
        //         child: Text(
        //       "Save",
        //       style: TextStyle(fontSize: 30),
        //     )),
        //     ProfileScreen(),
        //   ],
        //   items: [
        //     PersistentBottomNavBarItem(icon: Icon(Icons.home)),
        //     PersistentBottomNavBarItem(icon: Icon(Icons.message)),
        //     PersistentBottomNavBarItem(icon: Icon(Icons.save_alt)),
        //     PersistentBottomNavBarItem(icon: Icon(Icons.person)),
        //   ],
        //   confineInSafeArea: true,
        //   backgroundColor: Colors.white, // Default is Colors.white.
        //   handleAndroidBackButtonPress: true, // Default is true.
        //   resizeToAvoidBottomInset:
        //       true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        //   stateManagement: true, // Default is true.
        //   hideNavigationBarWhenKeyboardShows:
        //       true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        //   decoration: NavBarDecoration(
        //     gradient: LinearGradient(colors: [Colors.blue.shade300,Colors.green.shade200],),
        //     borderRadius: BorderRadius.circular(10.0),
        //     colorBehindNavBar: Colors.white,
        //   ),
        //   popAllScreensOnTapOfSelectedTab: true,
        //   popActionScreens: PopActionScreensType.all,
        //   itemAnimationProperties: ItemAnimationProperties(
        //     // Navigation Bar's items animation properties.
        //     duration: Duration(milliseconds: 200),
        //     curve: Curves.ease,
        //   ),
        //   screenTransitionAnimation: ScreenTransitionAnimation(
        //     // Screen transition animation on change of selected tab.
        //     animateTabTransition: true,
        //     curve: Curves.ease,
        //     duration: Duration(milliseconds: 200),
        //   ),
        //   navBarStyle: NavBarStyle
        //       .style3, // Choose the nav bar style with this property.
        // ),
  }

  _onBackButtonPressed(BuildContext context) async {
    bool? exitapp = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Really ??"),
          content: Text("Do You want to close the App??"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else {
                  exit(0);
                }
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    );
    return exitapp ?? false;
  }
}
