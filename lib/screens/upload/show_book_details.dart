import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/home_screen/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ShowBookDetail extends StatefulWidget {
  final uploadedBookNo;
  final bookName;
  final bookAuthor;
  final bookEdition;
  final bookISBN;
  final frontViewUrl;
  final backViewUrl;
  final threeDViewUrl;
  final sell;
  final lend;
  final donate;

  const ShowBookDetail(
      {Key key,
      this.uploadedBookNo,
      this.bookName,
      this.bookAuthor,
      this.bookEdition,
      this.bookISBN,
      this.frontViewUrl,
      this.backViewUrl,
      this.threeDViewUrl,
      this.sell,
      this.lend,
      this.donate})
      : super(key: key);

  @override
  _ShowBookDetailState createState() => _ShowBookDetailState();
}

class _ShowBookDetailState extends State<ShowBookDetail> {
  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF223D6B),
        title: Text(
          "Book Detail",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child:Column(
          children: [
            Text("Book Name - ${widget.bookName}"),
            Text("Book Author - ${widget.bookAuthor}"),
            Text("Book Edition - ${widget.bookEdition}"),
            Text("Book ISBN - ${widget.bookISBN}"),
            Row(
              children: [
                SizedBox(width: width*0.23,),
                Container(
                  height: height*0.05,
                  child: Image.network(
                          widget.frontViewUrl,
                          fit: BoxFit.cover
                      ),
                ),
                SizedBox(width: width*0.05,),
                Container(
                  height: height*0.05,
                  child: Image.network(
                      widget.backViewUrl,
                      fit: BoxFit.cover
                  ),
                ),
                SizedBox(width: width*0.05,),
                Container(
                  height: height*0.05,
                  child: Image.network(
                      widget.threeDViewUrl,
                      fit: BoxFit.cover
                  ),
                ),
              ],
            ),
            Text("Purpose - ${widget.lend}, ${widget.sell}, ${widget.donate}"),
            SizedBox(width: width*0.05,),
            CustomizedNeumorphicButton(
                fontSize: 24.0,
                buttonText: "Submit",
                onPressed: () {
                  setState(() {
                    uploadedBookNo=uploadedBookNo+1;
                  });
                  _firestore
                      .collection('UserDetails')
                      .doc(loggedInEmail)
                      .update({
                    "uploadedBookNo":uploadedBookNo,
                  });
                  _firestore
                      .collection('BookUploadedDetails')
                      .doc(loggedInEmail).collection("Book${widget.uploadedBookNo}").add({
                        "BookName":widget.bookName,
                        "BookAuthor":widget.bookAuthor,
                        "BookEdition":widget.bookEdition,
                        "BookISBN":widget.bookISBN,
                        "FrontView":widget.frontViewUrl,
                        "3DView":widget.threeDViewUrl,
                        "BackView":widget.backViewUrl,
                        "ForSell": widget.sell,
                        "ForLending": widget.lend,
                        "ForDonation":widget.donate,

                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
      backgroundColor: Color(0xFFECF0F3),
    );
  }
}
