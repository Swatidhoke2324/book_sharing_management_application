import 'package:book_sharing_management_application/services/before_otp.dart';
// import 'package:book_sharing_management_application/services/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SocialMediaRadioButton extends StatelessWidget {
  final redirect;
  final smrbChild;

  const SocialMediaRadioButton({Key key, this.smrbChild, this.redirect}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return NeumorphicButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PhoneAuthScreen();
            },
          ),
        );
      },
      style:NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
          depth: 8,
          lightSource: LightSource.topLeft,
          color: Colors.white
      ),
      padding: EdgeInsets.all(width * 0.00),
      child: smrbChild,
    );
  }
}
