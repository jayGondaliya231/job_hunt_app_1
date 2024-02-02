import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final text;
  final onPressed;
  final color;

  const CommonButton({
    super.key,
    this.text,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: h * 0.06,
        width: w / 1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(w * 0.12),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
