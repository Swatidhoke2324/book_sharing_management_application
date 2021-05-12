import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class More extends StatefulWidget {
  @override
  _More createState() => _More();
}

class _More extends State<More> {
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color(0xFF193566),
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF193566),
          title: Text(
            "More",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Color(0xFFECF0F3),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Icon(
                CupertinoIcons.line_horizontal_3_decrease_circle_fill,
                size: 60,
                color: Color(0xFF193566),
              ),
              Text(
                'More',
                style: optionStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
