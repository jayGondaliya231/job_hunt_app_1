import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth/Login_Screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // final FirebaseAuth auth = FirebaseAuth.instance;
  // //signout function
  // signOut() async {
  //   await auth.signOut();
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => Login_Screen()));
  // }

  List<String> name = [
    "Applied Job",
    "Favorites Job",
    "Save Job",
    "Logout",
  ];
  int id = 0;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Profiles",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.04),
        child: Column(
          children: [
            Container(
              height: h * 0.18,
              width: w * 0.9,
              margin: EdgeInsets.symmetric(
                  vertical: h * 0.02, horizontal: w * 0.01),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(h * 0.02),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 2,
                      blurRadius: 3,
                    ),
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: w * 0.04,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: h * 0.08,
                          width: w * 0.18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h*0.02),
                              image: DecorationImage(
                                  image:
                                      NetworkImage("https://www.profilebakery.com/wp-content/uploads/2023/03/AI-Profile-Picture.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          width: w * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phyllis C. Madrid",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Phyllis.Madrid56@gmail.com",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: h * 0.015,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                    child: Row(
                      children: [
                        Icon(
                          Icons.verified,
                          size: h * 0.02,
                        ),
                        Text(
                          "Verified",
                          style: TextStyle(
                            fontSize: h * 0.014,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: h * 0.03,
                            width: w * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.01),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: w * 0.01,
                                ),
                                Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: h * 0.015,
                                ),
                                SizedBox(
                                  width: w * 0.02,
                                ),
                                Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Column(
              children: List.generate(
                  4,
                  (index) => Column(
                        children: [
                          ListTile(
                            onTap: () {
                              id = index;
                              if (id == 5) {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: Center(child: Text('ALERT')),
                                    content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Are you Sure want to Logout',
                                          style: TextStyle(fontSize: h * 0.015),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // box.remove('uid');
                                          // signOut();
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              } else if (id == 0) {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => OrderScreen(),
                                //     ));
                              }
                            },
                            title: Text(
                              name[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                          Divider(),
                        ],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
