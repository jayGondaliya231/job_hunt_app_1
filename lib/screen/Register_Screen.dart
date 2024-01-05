import 'package:flutter/material.dart';
import 'package:job_hunt_app/common_Widget/common_button.dart';
import 'package:job_hunt_app/common_Widget/common_textfield.dart';

class Register_screen extends StatefulWidget {
  const Register_screen({super.key});

  @override
  State<Register_screen> createState() => _Register_screenState();
}

class _Register_screenState extends State<Register_screen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _country = TextEditingController();

  final form = GlobalKey<FormState>();
  bool visibalstatus = false;
  bool check = false;
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
                SizedBox(
                  height: h * 0.05,
                ),
                Image.network(
                    "https://tchelete.com/wp-content/uploads/2023/04/6-Tips-for-Hiring-off-Upwork.png"),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Sign up to find work you",
                  style: TextStyle(
                    fontSize: h * 0.04,
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
                  height: h*0.02,
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
                SizedBox(
                  height: h*0.02,
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
                  height: h*0.02,
                ),
                Common_TextField(
                  hint_text: "First Name",
                  type: TextInputType.name,
                  Controller: _firstName,
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
                  height: h*0.015,
                ),
                Common_TextField(
                  hint_text: "Last Name",
                  type: TextInputType.name,
                  Controller: _lastName,
                  visible: false,
                  ValidatorCommand: (value) {
                    if (value!.contains("!") ||
                        value.contains("*") ||
                        value.contains("@") ||
                        value.contains("#") ||
                        value.contains("?") ||
                        value.contains("\$") ||
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
                  height: h*0.015,
                ),
                Common_TextField(
                  hint_text: "Email address",
                  type: TextInputType.emailAddress,
                  Controller: _email,
                  visible: false,
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
                  height: h*0.015,
                ),
                Common_TextField(
                  hint_text: "Password",
                  type: TextInputType.text,
                  Controller: _password,
                  visible: !visibalstatus,
                  icon1: IconButton(
                    icon: Icon(visibalstatus
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        visibalstatus = !visibalstatus;
                      });
                    },
                  ),

                  ValidatorCommand: (value) {
                    if (value!.isEmpty) {
                      return "not valid email address!!";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: h*0.015,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    IconButton(
                      icon: Icon(check
                          ? Icons.check_circle_outline
                          : Icons.circle_outlined,color: Colors.blue,),
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
                        style: TextStyle(fontSize: h*0.013),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CommonButton(
                  color: Colors.blue,
                  text: "Continue woth Google",
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      print("welcome");
                    }
                  },
                ),
                SizedBox(
                  height: h*0.015,
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
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Login_Screen(),
                        //     ));
                      },
                      child: Text(
                        "Login ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
