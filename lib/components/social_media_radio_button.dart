import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SocialMediaRadioButton extends StatelessWidget {
  final smrbChild;

  const SocialMediaRadioButton({Key key, this.smrbChild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return NeumorphicRadio(
      padding: EdgeInsets.all(width * 0.015),
      child: smrbChild,
      style: NeumorphicRadioStyle(
        boxShape: NeumorphicBoxShape.circle(),
        shape: NeumorphicShape.concave,
      ),
    );
  }
}
