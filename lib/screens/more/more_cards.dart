import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MoreCards extends StatefulWidget {
  final givenheight;
  final onPress;
  final text;
  final icon;
  const MoreCards({
    this.givenheight,
    this.onPress,
    this.text,
    this.icon,
  });

  @override
  _MoreCardsState createState() => _MoreCardsState();
}

class _MoreCardsState extends State<MoreCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF193566),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                widget.text,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
