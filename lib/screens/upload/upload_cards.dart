import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class UploadCards extends StatelessWidget {
  final String cardText;
  final String imagePath;
  final Function onPress;
  final double imageWidth;
  final double imageHeight;

  const UploadCards(
      {Key key,
      this.cardText,
      this.imagePath,
      this.onPress,
      this.imageWidth,
      this.imageHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Neumorphic(
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        padding: EdgeInsets.all(10),
        style: NeumorphicStyle(
          depth: 20,
          surfaceIntensity: 0.10,
          intensity: 0.80,
          shape: NeumorphicShape.convex,
          color: Color(0xFFECF0F3),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              Image.asset(imagePath, width: imageWidth, height: imageHeight),
              Spacer(),
              Text(
                cardText,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
