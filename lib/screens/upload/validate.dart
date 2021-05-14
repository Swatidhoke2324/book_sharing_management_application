import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/login_screen/login_screen_body.dart';
import 'package:book_sharing_management_application/screens/upload/upload.dart';
import 'package:flutter/material.dart';

class UploadPageValidate extends StatefulWidget {
  @override
  _UploadPageValidateState createState() => _UploadPageValidateState();
}

class _UploadPageValidateState extends State<UploadPageValidate> {
  @override
  Widget build(BuildContext context) {
    if (loggedInEmail==null){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF223D6B),
          title: Text(
            "Book Credentials",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Color(0xFFECF0F3),
        body: Container(
        child: Column(children: [
          Text("Your are not signed in"),
          CustomizedNeumorphicButton(
              fontSize: 24.0,
              buttonText: "Login",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreenBody();
                    },
                  ),
                );
              }),
        ],),
      ),);
    }
    else{
      return Upload();
    }
  }
}
