
import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/components/customized_text_form_field.dart';
import 'package:book_sharing_management_application/components/customized_text_widget.dart';
import 'package:book_sharing_management_application/components/social_media_radio_button.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/forgot_password/forgot_password.dart';
import 'package:book_sharing_management_application/screens/home_screen/home_screen.dart';
import 'package:book_sharing_management_application/screens/sign_up_screen.dart/signup_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreenBody extends StatefulWidget {
  static const String id = 'login_screen_body';

  @override
  _LoginScreenBodyState createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final _firestore = FirebaseFirestore.instance;
  // Map userDetails;
  User loggedInUser;
  String userNameCurrent;
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email;
  String password;

  // Future<void> _signOut() async {
  //   await _auth.signOut();
  // }

  _showDialog(context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text('Error'),
              content: Text('Username or password wrong'),
              actions: <Widget>[
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop('dialog');
                  },
                )
              ],
            ));
  }

  // Future<bool> _onBackPressed() {
  //   return showDialog(
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             title: Text('Exit'),
  //             content: Text('Do you want to exit the App ?'),
  //             actions: <Widget>[
  //               TextButton(
  //                 child: Text('No'),
  //                 onPressed: () {
  //                   Navigator.of(context).pop(false); //Will not exit the App
  //                 },
  //               ),
  //               TextButton(
  //                 child: Text('Yes'),
  //                 onPressed: () {
  //                   exit(0);
  //                   //Will exit the App
  //                 },
  //               )
  //             ],
  //           );
  //         },
  //       ) ??
  //       false;
  // }

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
                        Image.asset("assets/images/login.png"),
                        CustomizedTextWidget(
                          text: "Welcome to Book Sharing App!",
                          textColor: Color(0xFF223D6B),
                          textFont: "Product Sans",
                          textFontSize: 0.055,
                          textAlignment: Alignment.centerLeft,
                          ctwPaddingMultiple: 0,
                        ),
                        CustomizedTextWidget(
                          text: "Let's get started",
                          textColor: Color(0xFF193565),
                          textFont: "Source Sans Pro",
                          textFontSize: 0.04,
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
                        CustomizedTextFormField(
                          hintText: "Enter Password",
                          hideText: true,
                          onPress: (value) {
                            password = value;
                          },
                        ),
                        CustomizedTextWidget(
                          text: "Forgot Password?",
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ForgotPassword();
                                },
                              ),
                            );
                          },
                          textColor: Color(0xFF2E4263),
                          textFont: "Source Sans Pro",
                          textFontSize: 0.03,
                          textAlignment: Alignment.centerRight,
                          ctwPaddingMultiple: 0.015,
                        ),
                        CustomizedNeumorphicButton(
                          fontSize: 24.0,
                          buttonText: "Log In",
                          onPressed: () async {
                            // setState(() {
                            //   showSpinner = true;
                            // });
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                      email: email, password: password);
                              if (user != null) {
                                loggedInEmail=email;
                                getData();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomeScreen();
                                    },
                                  ),
                                );
                              } else {
                                print("error");
                              }

                              // setState(() {
                              //   showSpinner = false;
                              // });
                              setState(() {
                                // getData();
                              });
                            } catch (e) {
                              print('error =  $e');
                              _showDialog(context);
                            }
                          },
                        ),
                        CustomizedTextWidget(
                          text: "Sign Up",
                          textColor: Color(0xFF193566),
                          textFont: "Product Sans",
                          textFontSize: 0.04,
                          textFontWeight: FontWeight.bold,
                          textAlignment: Alignment.center,
                          textUnderline: TextDecoration.underline,
                          ctwPaddingMultiple: 0.015,
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignUpScreenBody();
                                },
                              ),
                            );
                          },
                        ),
                        CustomizedTextWidget(
                          text: "OR",
                          textColor: Color(0xFF193566),
                          textFont: "Source Sans Pro",
                          textFontSize: 0.04,
                          textAlignment: Alignment.center,
                          ctwPaddingMultiple: 0.02,
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SocialMediaRadioButton(
                                smrbChild: Container(
                              width: 50,
                              child: Image.asset("assets/images/phone.png"),
                            )),
                            SocialMediaRadioButton(
                                smrbChild: Container(
                              width: 50,
                              child: Image.asset("assets/images/google.png"),
                            )),
                            SocialMediaRadioButton(
                                smrbChild: Container(
                              width: 50,
                              child: Image.asset(
                                  "assets/images/facebook_logo.png"),
                            )),
                          ],
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
  void getData() {
    _firestore
        .collection('UserDetails')
        .doc(email)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      setState(() {
        if (documentSnapshot.exists) {
          fetchData=documentSnapshot.data();
          uploadedBookNo=fetchData["uploadedBookNo"];
          print("BookNo: $uploadedBookNo");
        }
      });
    });
  }
}
