import 'package:book_sharing_management_application/books/details/send_request.dart';
import 'package:book_sharing_management_application/constants.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../all_book.dart';

import '../../constants.dart';

class AddToCart extends StatelessWidget {
  AddToCart({
    Key key,
    @required this.product,
    this.type,
    this.reDirect,
    this.bookPostedBy, this.typeOfBook,
  }) : super(key: key);

  final Product product;
  final type;
  final reDirect;
  final bookPostedBy;
  String lenderName;
  String lenderEmail;
  String lenderPhoneNo;
  final typeOfBook;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: kPrimaryColor,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: kPrimaryColor,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: kPrimaryColor,
                onPressed: () {
                  if (typeOfBook=="borrow"){
                  FirebaseFirestore.instance
                      .collection('UserDetails')
                      .doc(bookPostedBy)
                      .get()
                      .then((DocumentSnapshot documentSnapshot) {
                    if (documentSnapshot.exists) {
                      lenderDetails = documentSnapshot.data();
                      lenderEmail=lenderDetails["E-Mail"];
                      lenderName=lenderDetails["UserName"];
                      lenderPhoneNo=lenderDetails["PhoneNo."];
                    }
                    print(lenderEmail);
                  });
                  FirebaseFirestore.instance
                      .collection('UserTransactions')
                      .doc(loggedInEmail)
                      .update({
                    "SentRequests": [{
                      "LenderName": lenderName,
                      "LenderEmail": lenderEmail,
                      "LenderPhoneNo": lenderPhoneNo,}
                    ],
                  });
                  FirebaseFirestore.instance
                      .collection('UserTransactions')
                      .doc(bookPostedBy)
                      .update({
                    "ReceivedRequests": [ {
                      "BorrowerName": loggedInName,
                      "BorrowerEmail": loggedInEmail,
                      "BorrowerPhoneNo": loggedInPhoneNo,
                    }],
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SendRequest(lenderEmail: lenderEmail,lenderName: lenderName,lenderPhoneNo: lenderPhoneNo,);
                      },
                    ),
                  );
                  }
                  else
                    {

                  }
                },
                child: Text(
                  type,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
