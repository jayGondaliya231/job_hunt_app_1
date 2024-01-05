import 'package:flutter/material.dart';

class Common_TextField extends StatelessWidget {
  final String hint_text;
  final String? Function(String?)? ValidatorCommand;
  final TextInputType type;
  final TextEditingController Controller;
  final bool? visible;
  final IconButton? icon1;

  const Common_TextField({
    super.key,
    required this.hint_text,
    this.ValidatorCommand,
    required this.type,
    required this.Controller,
    this.visible,
    this.icon1,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return TextFormField(

      obscureText: visible!,
      controller: Controller,
      validator: ValidatorCommand,
      keyboardType: type,
      style: TextStyle(fontSize: h * 0.016),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: icon1,
        contentPadding: EdgeInsets.symmetric(horizontal: w * 0.02),
        //constraints: BoxConstraints(maxHeight: h * 0.045),
        hintText: hint_text,
        hintStyle: TextStyle(color: Colors.grey, fontSize: h * 0.016),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade400,width: 2),
            borderRadius: BorderRadius.circular(h * 0.02)),

      ),
    );
  }
}
