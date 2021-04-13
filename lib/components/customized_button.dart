import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomizedNeumorphicButton extends StatelessWidget {
  final buttonText;
  final onPressed;
  final fontSize;

  const CustomizedNeumorphicButton({this.buttonText, this.onPressed, this.fontSize});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return NeumorphicButton(
      margin: EdgeInsets.only(top: height * 0.02),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.2, vertical: height * 0.015),
      onPressed: onPressed,
      style: NeumorphicStyle(
        depth: 20,
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(31)),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
            color: Color(0xFF1B355F),
            fontSize: fontSize,
            fontFamily: "Product Sans",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
