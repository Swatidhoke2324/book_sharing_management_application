import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/login_screen/login_screen_body.dart';
import 'package:book_sharing_management_application/screens/request/request.dart';
import 'package:book_sharing_management_application/screens/upload/upload.dart';
import 'package:flutter/material.dart';

class RequestPageValidate extends StatefulWidget {
  @override
  _RequestPageValidateState createState() => _RequestPageValidateState();
}

class _RequestPageValidateState extends State<RequestPageValidate> {
  @override
  Widget build(BuildContext context) {
    if (loggedInEmail == null) {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "You are not signed in. Kindly Sign in to upload book/s.",
              ),
            ),
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
              },
            ),
          ],
        ),
      );
    } else {
      return ValidateRequestPage();
    }
  }
}
