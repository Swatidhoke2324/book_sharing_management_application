import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/screens/upload/show_book_details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PurposeOfUpload extends StatefulWidget {
  final uploadedBookNo;
  final bookName;
  final bookAuthor;
  final bookEdition;
  final bookISBN;
  final frontViewUrl;
  final backViewUrl;
  final threeDViewUrl;

  const PurposeOfUpload({Key key, this.uploadedBookNo, this.bookName, this.bookAuthor, this.bookEdition, this.bookISBN, this.frontViewUrl, this.backViewUrl, this.threeDViewUrl}) : super(key: key);
  @override
  _PurposeOfUpload createState() => _PurposeOfUpload();
}

class _PurposeOfUpload extends State<PurposeOfUpload> {
  bool sell = false;
  bool lend = false;
  bool donate = false;

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
                    value: this.sell,
                    onChanged: (bool value) {
                      setState(() {
                        this.sell = value;
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
                  Checkbox(
                    value: this.lend,
                    onChanged: (bool value) {
                      setState(() {
                        this.lend = value;
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
                  Checkbox(
                    value: this.donate,
                    onChanged: (bool value) {
                      setState(() {
                        this.donate = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: height*0.1,
                  ),// x
                ], //<Widget>[]
              ), //
              CustomizedNeumorphicButton(
                  fontSize: 24.0,
                  buttonText: "Next",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ShowBookDetail(
                            uploadedBookNo:widget.uploadedBookNo,
                            bookName: widget.bookName,
                            bookAuthor: widget.bookAuthor,
                            bookEdition: widget.bookEdition,
                            bookISBN: widget.bookISBN,
                            frontViewUrl: widget.frontViewUrl,
                            backViewUrl: widget.backViewUrl,
                            threeDViewUrl: widget.threeDViewUrl,
                            sell: sell,
                            donate: donate,
                            lend: lend,
                          );
                        },
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
