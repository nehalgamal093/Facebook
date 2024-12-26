import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  String text;
  Color textColor;
  Color backgroundColor;
  Color borderColor;
  Function() onBtnPressed;
  CustomBtn(
      {required this.text,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
        required this.onBtnPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(16)),
        ),
        onPressed: onBtnPressed,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16, color: textColor, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
