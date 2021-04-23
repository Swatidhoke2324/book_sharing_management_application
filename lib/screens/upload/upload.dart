import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Upload extends StatefulWidget {
  @override
  _Upload createState() => _Upload();
}

class _Upload extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Upload",
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
                Icons.add_photo_alternate,
                size: 60,
              ),
              Text(
                'Upload',
                style: optionStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
