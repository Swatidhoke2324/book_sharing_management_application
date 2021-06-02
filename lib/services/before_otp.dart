import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/components/customized_text_form_field.dart';
import 'package:book_sharing_management_application/services/otp.dart';
import 'package:flutter/material.dart';

class PhoneAuthScreen extends StatefulWidget {
  @override
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  String contactNumber;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldkey,
      body: SingleChildScrollView(
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
                    Image.network(
                      "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_forgot-password.png",
                      height: height * 0.3,
                      fit: BoxFit.contain,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Center(
                        child: Text(
                          'Verify Your Phone Number',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
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
                    CustomizedNeumorphicButton(
                      fontSize: 24.0,
                      buttonText: "Send OTP",
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return OTPScreen(contactNumber: contactNumber,);
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
