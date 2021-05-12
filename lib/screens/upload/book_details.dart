import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/screens/home_screen/home_screen.dart';
import 'package:book_sharing_management_application/screens/upload/purpose_of_upload.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BookDetails extends StatefulWidget {
  @override
  _BookDetails createState() => _BookDetails();
}

class _BookDetails extends State<BookDetails> {
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
        ),
        backgroundColor: Color(0xFFECF0F3),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Icon(
                CupertinoIcons.book_circle_fill,
                size: 60,
                color: Color(0xFF193566),
              ),
              Text(
                'Book Details',
                style: TextStyle(
                  color: Color(0xFF193566),
                  fontWeight: FontWeight.w600,
                ),
              ),
              CustomizedNeumorphicButton(
                fontSize: 24.0,
                buttonText: "Next",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PurposeOfUpload();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
