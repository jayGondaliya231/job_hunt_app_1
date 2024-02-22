import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
    Center(child: Text("Message",style: TextStyle(fontSize: 30),)),
    Center(child: Text("Save",style: TextStyle(fontSize: 30),)),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          margin: EdgeInsets.only(bottom: 10),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() {
            _currentIndex = i;
          }),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.message),
              title: Text("Message"),
              selectedColor: Colors.pink,
            ),

            /// Cart
            SalomonBottomBarItem(
              icon: Icon(Icons.save_alt),
              title: Text("Save"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
        body: screen[_currentIndex],
      ),
      onWillPop: () => _onBackButtonPressed(context),
    );
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
