import 'package:book_sharing_management_application/components/customized_alert_dialog_box.dart';
import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/components/customized_text_form_field.dart';
import 'package:book_sharing_management_application/components/customized_text_widget.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/login_screen/login_screen_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreenBody extends StatefulWidget {
  @override
  _SignUpScreenBodyState createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String fullName;
  String contactNumber;
  String email;

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
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Container(
                    height: height,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                    color: Color(0xFFECF0F3),
                    child: IntrinsicHeight(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: height * 0.04),
                            Image.asset("assets/images/signup.png"),
                            //TODO: Validate all the credentials.
                            CustomizedTextWidget(
                              text: "Sign Up",
                              textColor: Color(0xFF223D6B),
                              textFont: "Product Sans",
                              textFontSize: 0.09,
                              textFontWeight: FontWeight.bold,
                              textAlignment: Alignment.centerLeft,
                              ctwPaddingMultiple: 0,
                            ),
                            CustomizedTextFormField(
                              hintText: "Full Name",
                              hideText: false,
                              onPress: (value) {
                                fullName = value;
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter your Name.';
                                }
                                return null;
                              },
                            ),
                            CustomizedTextFormField(
                              inputType: TextInputType.datetime,
                              hintText: "Contact Number",
                              hideText: false,
                              onPress: (value) {
                                contactNumber = value;
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter your Phone Number.';
                                }
                                if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid Phone Number.';
                                }
                                return null;
                              },
                            ),
                            CustomizedTextFormField(
                              hintText: "Enter Email ID",
                              hideText: false,
                              onPress: (value) {
                                email = value;
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter an E-mail ID.';
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return 'Please enter a valid E-mail ID.';
                                }
                                return null;
                              },
                            ),
                            CustomizedTextFormField(
                              hintText: "Password",
                              hideText: true,
                              controller: password,
                              // onPress: (value) {
                              //   password = value;
                              // },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter a Password';
                                }
                                return null;
                              },
                            ),
                            CustomizedTextFormField(
                              hintText: "Confirm Password",
                              hideText: true,
                              controller: confirmPassword,
                              // onPress: (value) {
                              //   confirmPassword = value;
                              // },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please re-enter password';
                                }
                                print(password.text);

                                print(confirmPassword.text);

                                if (password.text != confirmPassword.text) {
                                  return "Password does not match";
                                }

                                return null;
                              },
                            ),
                            CustomizedNeumorphicButton(
                              fontSize: 24.0,
                              buttonText: "Sign Up",
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  try {
                                    final newUser = await _auth
                                        .createUserWithEmailAndPassword(
                                            email: email,
                                            password: password.text);
                                    if (newUser != null) {
                                      FirebaseFirestore.instance
                                          .collection('UserDetails')
                                          .doc(email)
                                          .set({
                                        'UserName': fullName,
                                        'E-Mail': email,
                                        'PhoneNo.': contactNumber,
                                        "uploadedBookNo":0,
                                      });
                                      FirebaseFirestore.instance
                                          .collection('UserIds')
                                          .doc("email")
                                          .set({
                                        'ids': idList+ [email],
                                      });
                                      FirebaseFirestore.instance
                                          .collection('BookUploadedDetails')
                                          .doc(email)
                                          .set({
                                      });
                                      FirebaseFirestore.instance
                                          .collection('UserTransactions')
                                          .doc(email)
                                          .set({
                                      });
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return LoginScreenBody();
                                          },
                                        ),
                                      );
                                    }
                                  } catch (e) {
                                    showDialog(
                                      context: context,
                                      builder: (_) => AlertDialogBox(
                                        textInAlertBox: e.message,
                                      ),
                                    );
                                  }
                                }
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
