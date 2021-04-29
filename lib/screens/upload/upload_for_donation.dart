import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/components/customized_dropdown_button.dart';
import 'package:book_sharing_management_application/components/customized_text_form_field.dart';
import 'package:book_sharing_management_application/components/customized_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class UploadForDonation extends StatefulWidget {
  @override
  _UploadForDonation createState() => _UploadForDonation();
}

class _UploadForDonation extends State<UploadForDonation> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool showSpinner = false;
  String bookName;
  String bookAuthor;
  String bookEdition;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "Upload Book For Donation",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Color(0xFFECF0F3),
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
                                text: "Upload a Book",
                                textColor: Color(0xFF223D6B),
                                textFont: "Product Sans",
                                textFontSize: 0.08,
                                textFontWeight: FontWeight.bold,
                                textAlignment: Alignment.centerLeft,
                                ctwPaddingMultiple: 0,
                              ),
                              CustomizedTextFormField(
                                hintText: "Book Name",
                                hideText: false,
                                onPress: (value) {
                                  bookName = value;
                                },
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Please enter Book Name';
                                  }
                                  return null;
                                },
                              ),
                              CustomizedTextFormField(
                                hintText: "Book Author",
                                hideText: false,
                                onPress: (value) {
                                  bookAuthor = value;
                                },
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Please enter Book Author.';
                                  }
                                  return null;
                                },
                              ),
                              CustomizedTextFormField(
                                inputType: TextInputType.datetime,
                                hintText: "Book Edition",
                                hideText: false,
                                onPress: (value) {
                                  bookEdition = value;
                                },
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Please enter Book Edition.';
                                  }
                                  return null;
                                },
                              ),
                              CustomizedNeumorphicButton(
                                  fontSize: 24.0, buttonText: "Upload"),
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
      ),
    );
  }
}
