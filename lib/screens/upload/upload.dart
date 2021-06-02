import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/components/customized_text_form_field.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/get_books_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'book_details.dart';

class Upload extends StatefulWidget {
  @override
  _Upload createState() => _Upload();
}

class _Upload extends State<Upload> {
  void getData() {
    _firestore
        .collection('UserDetails')
        .doc(loggedInEmail)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      setState(() {
        if (documentSnapshot.exists) {
          fetchData = documentSnapshot.data();
          uploadedBookNo = fetchData["uploadedBookNo"];
          print("BookNo: $uploadedBookNo");
        }
      });
    });
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final _firestore = FirebaseFirestore.instance;
  bool showSpinner = false;
  String bookName;
  String bookAuthor;
  String bookEdition;
  String bookISBN;

  Future uploadFile(File img) async {
    Reference ref = FirebaseStorage.instance
        .ref()
        .child('$loggedInEmail/BookImages/Book$uploadedBookNo/Img');
    await ref.putFile(img).whenComplete(() {
      ref.getDownloadURL().then((fileUrl) {
        print(fileUrl);
        setState(() {
          FirebaseFirestore.instance
              .collection('UserDetails')
              .doc(loggedInEmail)
              .update({
            'BookImageUrls': fileUrl,
          });
          // uploadFileUrl = fileUrl;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
                              Image.asset("assets/images/login.png"),
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
                              CustomizedTextFormField(
                                inputType: TextInputType.datetime,
                                hintText: "ISBN Number",
                                hideText: false,
                                onPress: (value) {
                                  bookISBN = value;
                                },
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Please enter ISBN Number.';
                                  }
                                  return null;
                                },
                              ),
                              CustomizedNeumorphicButton(
                                  fontSize: 24.0,
                                  buttonText: "Next",
                                  onPressed: () {
                                    if (_formkey.currentState.validate()) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BookDetails(
                                              uploadedBookNo: uploadedBookNo,
                                              bookName: bookName,
                                              bookAuthor: bookAuthor,
                                              bookEdition: bookEdition,
                                              bookISBN: bookISBN,
                                            );
                                          },
                                        ),
                                      );
                                    }
                                  }),
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
