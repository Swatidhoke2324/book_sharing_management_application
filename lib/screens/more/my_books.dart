import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/screens/upload/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyBooks extends StatefulWidget {
  @override
  _MyBooks createState() => _MyBooks();
}

class _MyBooks extends State<MyBooks> {
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 18,
      color: Color(0xFF193566),
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF193566),
          title: Text(
            "My Books",
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
                CupertinoIcons.heart_circle_fill,
                size: 60,
                color: Color(0xFF193566),
              ),
              Text(
                'No Books Uploaded',
                style: optionStyle,
              ),
              CustomizedNeumorphicButton(
                fontSize: 24.0,
                buttonText: "Upload",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Upload();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
