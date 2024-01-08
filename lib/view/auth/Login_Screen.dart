import 'package:flutter/material.dart';
import 'package:job_hunt_app/common_Widget/common_button.dart';
import 'package:job_hunt_app/common_Widget/common_textfield.dart';


class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final form = GlobalKey<FormState>();
  final _username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Form(
        key: form,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.08),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.05,
                ),
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIiTVitXsv4uZKxbKY4qcM38oXZMQNt2N-Zg&usqp=CAU"),
                SizedBox(
                  height: h * 0.02,
                ),

                Text(
                  "Login into JobHunt",
                  style: TextStyle(
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Common_TextField(
                  hint_text: "Username or Email",
                  type: TextInputType.emailAddress,
                  Controller: _username,
                  visible: false,
                  icons: Icon(Icons.person_2_outlined),
                  ValidatorCommand: (value) {
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                    if (value.isEmpty) {
                      return "* This field is required..";
                    } else if (!emailValid) {
                      return "Enter correct Username";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                CommonButton(
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      print("welcome Login");
                    }
                  },
                  text: "Continue with Email",
                  color: Colors.green.shade700,
                ),
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
                InkWell(
                  onTap: () {
                    print("ok");
                  },
                  child: Container(
                    height: h * 0.045,
                    width: w / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 0.12),
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.003, right: w * 0.13),
                          child: Image(
                              image:
                                  AssetImage("assets/images/google_logo.png")),
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: h*0.03,),
                Text(
                  "JobHunt uses cookies for analytics, personalized content and\nads. By using JobHunt's services,you agree to this use of\ncookies.",
                  style: TextStyle(
                    fontSize: h * 0.012,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
