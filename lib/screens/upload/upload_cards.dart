import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class UploadCards extends StatefulWidget {
  final givenheight;
  final onPress;
  final text;
  const UploadCards({
    this.givenheight,
    this.onPress,
    this.text,
  });

  @override
  _UploadCardsState createState() => _UploadCardsState();
}

class _UploadCardsState extends State<UploadCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Neumorphic(
            margin: EdgeInsets.all(0.0),
            style: NeumorphicStyle(
              depth: 20,
              surfaceIntensity: 0.10,
              intensity: 0.80,
              shape: NeumorphicShape.convex,
              color: Color(0xFF223D6B),
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
            ),
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 110.0,
              width: 300.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(23.0),
                    height: widget.givenheight,
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        color: Color(0xFFECF0F3),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
