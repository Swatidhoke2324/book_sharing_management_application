import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/upload/show_book_details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PurposeOfUpload extends StatefulWidget {
  final uploadedBookNo;

  const PurposeOfUpload({Key key, this.uploadedBookNo}) : super(key: key);
  @override
  _PurposeOfUpload createState() => _PurposeOfUpload();
}

class _PurposeOfUpload extends State<PurposeOfUpload> {
  final _firestore = FirebaseFirestore.instance;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF223D6B),
          title: Text(
            "Book Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),        backgroundColor: Color(0xFFECF0F3),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    'Upload Book for Selling : ',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  SizedBox(width: 10), //SizedBox
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.value,
                    onChanged: (bool value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ), //Checkbox
                ], //<Widget>[]
              ), //
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    'Upload Book for Lending : ',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  SizedBox(width: 10), //SizedBox
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.value,
                    onChanged: (bool value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ), //Checkbox
                ], //<Widget>[]
              ), //
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    'Upload Book for Donation : ',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  SizedBox(width: 10), //SizedBox
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.value,
                    onChanged: (bool value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ), //Checkbo
                  SizedBox(
                    height: height*0.1,
                  ),// x
                  CustomizedNeumorphicButton(
                      fontSize: 24.0,
                      buttonText: "Next",
                      onPressed: () {
                          _firestore
                              .collection('BookUploadedDetails')
                              .doc(loggedInEmail)
                              .update({
                            "BookDetails":{
                              "Book$uploadedBookNo":{
                                "ForSell": true,
                                "ForLending": true,
                                "ForDonation":true,
                              }
                            },
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ShowBookDetail();
                              },
                            ),
                          );
                      }),
                ], //<Widget>[]
              ), //
            ],
          ),
        ),
      ),
    );
  }
}
