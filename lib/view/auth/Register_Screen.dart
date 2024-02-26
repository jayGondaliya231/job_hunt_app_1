import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:job_hunt_app/common_Widget/common_button.dart';
import 'package:job_hunt_app/common_Widget/common_textfield.dart';
import 'package:provider/provider.dart';

import '../../Controller/controller.dart';
import '../../Providers/AuthProvider.dart';
import '../BottomBar.dart';
import 'Login_Screen.dart';

class Register_screen extends StatefulWidget {
  const Register_screen({super.key});

  @override
  State<Register_screen> createState() => _Register_screenState();
}

class _Register_screenState extends State<Register_screen> {
  final _firstName = TextEditingController();
  final _email = TextEditingController();
  final _mobile_no = TextEditingController();
  final _password = TextEditingController();

  final form = GlobalKey<FormState>();

  Controller controller = Get.find();
  CollectionReference user = FirebaseFirestore.instance.collection('user');
  FirebaseAuth author = FirebaseAuth.instance;
  bool visibalstatus = false;
  bool check = false;

  @override
  void initState() {
    super.initState();
    visibalstatus = !true;
    print(role);
  }

  String? role;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: form,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.08),
            child: Column(
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    height: h * 0.3,
                    color: Colors.red,
                    child: Image.asset("assets/images/JOB HUNT 12.png"),
                  ),
                ),
                Text(
                  "Sign up to find work you",
                  style: TextStyle(
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "love",
                  style: TextStyle(
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              role = "Freelancer";
                              print(role);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.07,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: role == "Freelancer"
                                        ? Colors.black
                                        : Colors.white),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: w * 0.01,
                                ),
                                Icon(
                                  role == "Freelancer"
                                      ? Icons.person_4
                                      : Icons.person_outline_rounded,
                                  color: Color(0xff557688),
                                  size: h * 0.03,
                                ),
                                SizedBox(
                                  width: w * 0.01,
                                ),
                                Text(
                                  "Freelancer",
                                  style: TextStyle(
                                    color: role == "Freelancer"
                                        ? Color(0xff557688)
                                        : Colors.black,
                                    fontSize: h * 0.02,
                                    fontWeight: role == "Freelancer"
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              role = "Employeer";
                              print(role);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.07,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: role == "Employeer"
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                color: Colors.white),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: w * 0.01,
                                ),
                                Icon(
                                  role == "Employeer"
                                      ? Icons.business_center
                                      : Icons.business_center_outlined,
                                  color: Color(0xff557688),
                                  size: h * 0.03,
                                ),
                                SizedBox(
                                  width: w * 0.01,
                                ),
                                Text(
                                  "Employeer",
                                  style: TextStyle(
                                    color: role == "Employeer"
                                        ? Color(0xff557688)
                                        : Colors.black,
                                    fontSize: h * 0.02,
                                    fontWeight: role == "Employeer"
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     // try {
                //     //   GoogleSignIn googleSignIn = GoogleSignIn();
                //     //
                //     //   GoogleSignInAccount? account = await googleSignIn.signIn();
                //     //
                //     //   GoogleSignInAuthentication authProvider =
                //     //       await account!.authentication;
                //     //
                //     //   var credentialProvider = GoogleAuthProvider.credential(
                //     //     accessToken: authProvider.accessToken,
                //     //     idToken: authProvider.idToken,
                //     //   );
                //     //   var userCredentials =
                //     //       await auth.signInWithCredential(credentialProvider);
                //     //
                //     //   print("User: " + '${userCredentials.user!.displayName}');
                //     // } on FirebaseAuthException catch (e) {
                //     //   print('ERROR ${e.message}');
                //     // }
                //
                //   },
                //   child: Container(
                //     height: h * 0.045,
                //     width: w / 1.2,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(w * 0.12),
                //       color: Color(0xff557688),
                //     ),
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding:
                //               EdgeInsets.only(left: w * 0.003, right: w * 0.13),
                //           child: Image(
                //               image:
                //                   AssetImage("assets/images/google_logo.png")),
                //         ),
                //         Text(
                //           "Continue with Google",
                //           style: TextStyle(color: Colors.white),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h * 0.001,
                      width: w * 0.39,
                      color: Colors.grey,
                    ),
                    Text(
                      " or ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Container(
                      height: h * 0.001,
                      width: w * 0.39,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Common_TextField(
                  hint_text: "Name",
                  type: TextInputType.name,
                  Controller: _firstName,
                  icons: Icon(
                    Icons.person_outlined,
                    color: Colors.grey,
                  ),
                  visible: false,
                  ValidatorCommand: (value) {
                    if (value!.contains("!") ||
                        value.contains("*") ||
                        value.contains("@") ||
                        value.contains("\$") ||
                        value.contains("#") ||
                        value.contains("?") ||
                        value.contains("^") ||
                        value.contains("&")) {
                      return "This field can not contain special characters";
                    } else if (value.isEmpty) {
                      return "* This field is required..";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Common_TextField(
                  hint_text: "Email address",
                  type: TextInputType.emailAddress,
                  Controller: _email,
                  visible: false,
                  icons: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  ValidatorCommand: (value) {
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                    if (value.isEmpty) {
                      return "* This field is required..";
                    } else if (!emailValid) {
                      return "Enter correct email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Common_TextField(
                  hint_text: "Mobile No.",
                  type: TextInputType.number,
                  Controller: _mobile_no,
                  icons: Icon(
                    Icons.call_end_outlined,
                    color: Colors.grey,
                  ),
                  visible: false,
                  ValidatorCommand: (value) {
                    if (value!.isEmpty) {
                      return "Enter Phone";
                    } else if (value.length < 10 || value.length > 10) {
                      return "Enter 10 characters mobile number";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Common_TextField(
                  hint_text: "Password",
                  type: TextInputType.text,
                  Controller: _password,
                  icons: Icon(
                    Icons.lock_outline,
                    color: Colors.grey,
                  ),
                  visible: !visibalstatus,
                  icon1: IconButton(
                    icon: Icon(
                      visibalstatus ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        visibalstatus = !visibalstatus;
                      });
                    },
                  ),
                  ValidatorCommand: (value) {
                    if (value!.length < 6 || value.length > 12) {
                      return "Enter minimum 4 and Maximum 12 characters";
                    } else if (value.isEmpty) {
                      return "Enter Password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        check
                            ? Icons.check_circle_outline
                            : Icons.circle_outlined,
                        color: Color(0xff557688),
                      ),
                      onPressed: () {
                        setState(() {
                          check = !check;
                        });
                      },
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Yes,I understand and agree to the Upwork Terms \nof Service. including the User Agreement and \nPrivacy Policy.",
                        style: TextStyle(fontSize: h * 0.013),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CommonButton(
                  onPressed: () async {
                    if (role == null) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            print("Not selected");
                            return AlertDialog(
                              content: Container(
                                alignment: Alignment.center,
                                height: 100,
                                child: Column(
                                  children: [
                                    Text(
                                      "Please Select Role",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Roboto-Bold",
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("Ok"))
                                  ],
                                ),
                              ),
                            );
                          });
                    } else {
                      if (form.currentState!.validate()) {
                        try{
                          final User =
                          Provider.of<Auth>(context,listen: false);


                          User.createUser(_email.text, _password.text)
                              .then((value) {
                            FirebaseFirestore.instance
                                .collection("Users")
                                .doc(_email.text)
                                .set({
                              'name': _firstName.text,
                              'email': _email.text,
                              'password': _password.text,
                              'phone': _mobile_no.text,
                              'primaryRole': role
                            }).then((value) async {
                              await FirebaseAuth.instance.currentUser!
                                  .updateDisplayName(_firstName.text);
                              // await FirebaseAuth.instance.currentUser!.sendEmailVerification();
                            }).then((value) {
                              if (role == "Freelancer") {
                                print("User welcome");
                                // Navigator.of(context)
                                //     .pushReplacement(MaterialPageRoute(
                                //     builder: (_) => SkillsGather(
                                //       email:
                                //       _email.text,
                                //       name: _firstName.text,
                                //     )));
                              } else if (role == "Employeer") {
                                print("Admin Welcome");
                                // Navigator.of(context).pushReplacement(
                                //   MaterialPageRoute(
                                //       builder: (_) =>
                                //           GetEmployeerDetail(
                                //             email: _email.text,
                                //             name: _firstName.text,
                                //           )),
                                // );
                              }
                            });
                          });
                        } catch(e){
                         print("-->>>>${e}");

                    }

                        //   setState(() {
                        //     controller.loddder(true);
                        //   });
                        //   try {
                        //     var userCredentials = await author
                        //         .createUserWithEmailAndPassword(
                        //             email: "${_email.text}",
                        //             password: "${_password.text}");
                        //     setState(() {
                        //       controller.loddder(false);
                        //     });
                        //     user.doc('${userCredentials.user!.uid}').set({
                        //       'name': _firstName.text,
                        //       'email': _email.text,
                        //       'password': _password.text,
                        //       'phone': _mobile_no.text
                        //     });
                        //     // box.write(
                        //     //     'uid', '${userCredentials.user!.uid}');
                        //     //
                        //     Get.off(bottombar());
                        //     print('${userCredentials.user!.email}');
                        //   } on FirebaseAuthException catch (e) {
                        //     Get.snackbar('', "${e.message}");
                        //     setState(() {
                        //       controller.loddder(false);
                        //     });
                      }
                    }
                  },
                  text: "Register",
                  color: Color(0xff557688),
                ),


                // CommonButton(
                //   color: Color(0xff557688),
                //   text: "Continue woth Google",
                //   onPressed: () {
                //     if (form.currentState!.validate()) {
                //       Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen(),));
                //     }
                //   },
                // ),
                SizedBox(
                  height: h * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an Account?",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: w * 0.013,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login_Screen(),
                            ));
                      },
                      child: Text(
                        "Login ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff557688),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
