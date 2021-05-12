import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/components/customized_text_form_field.dart';
import 'package:book_sharing_management_application/components/customized_text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _auth = FirebaseAuth.instance;
  String email;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                  color: Color(0xFFECF0F3),
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: height * 0.04),
                        Image.asset("assets/images/reset_password.png"),
                        CustomizedTextWidget(
                          text: "Forgot Password",
                          textColor: Color(0xFF223D6B),
                          textFont: "Product Sans",
                          textFontSize: 0.07,
                          textFontWeight: FontWeight.bold,
                          textAlignment: Alignment.centerLeft,
                          ctwPaddingMultiple: 0,
                        ),
                        CustomizedTextFormField(
                          hintText: "Enter Email ID",
                          hideText: false,
                          onPress: (value) {
                            email = value;
                          },
                        ),
                        CustomizedNeumorphicButton(
                          fontSize: 20.0,
                          buttonText: "Reset Password",
                          onPressed: () async {
                            _auth.sendPasswordResetEmail(email: email);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
