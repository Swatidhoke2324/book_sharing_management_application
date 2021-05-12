import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/screens/upload/upload_cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PurposeOfUpload extends StatefulWidget {
  @override
  _PurposeOfUpload createState() => _PurposeOfUpload();
}

class _PurposeOfUpload extends State<PurposeOfUpload> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFECF0F3),
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100.0, bottom: 22.0),
              child: UploadCards(
                onPress: null,
                text: 'Upload Book for Selling',
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: UploadCards(
                onPress: null,
                text: 'Upload Book for Lending',
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: UploadCards(
                onPress: null,
                text: 'Upload Book for Donation',
              ),
            ),
            CustomizedNeumorphicButton(
              fontSize: 24.0,
              buttonText: "Upload",
            ),
          ],
        )),
      ),
    );
  }
}
