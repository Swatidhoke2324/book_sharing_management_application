import 'package:book_sharing_management_application/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import '../all_book.dart';
import 'components/body.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  final bookName;
  final type;
  final imageUrl;
  final authorName;
  final reDirect;
  final bookPostedBy;
  final typeOfBook;

<<<<<<< HEAD
  const DetailsScreen(
      {Key key,
      this.product,
      this.bookName,
      this.type,
      this.imageUrl,
      this.authorName,
      this.reDirect,
      this.bookPostedBy,
      this.typeOfBook})
      : super(key: key);
=======
  const DetailsScreen({Key key, this.product, this.bookName, this.type, this.imageUrl, this.authorName, this.reDirect, this.bookPostedBy, this.typeOfBook}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }
  void getData(){
    FirebaseFirestore.instance
        .collection('UserDetails')
        .doc(widget.bookPostedBy)
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
  }
>>>>>>> parent of 58e121a (Formatting Changes)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Colors.grey,
      appBar: buildAppBar(context),
<<<<<<< HEAD
      body: Body(
        product: product,
        bookName: bookName,
        type: type,
        imageUrl: imageUrl,
        authorName: authorName,
        reDirect: reDirect,
        typeOfBook: typeOfBook,
        bookPostedBy: bookPostedBy,
      ),
=======
      body: Body(product: widget.product,bookName: widget.bookName,type: widget.type,imageUrl: widget.imageUrl,authorName: widget.authorName,reDirect: widget.reDirect,typeOfBook: widget.typeOfBook,bookPostedBy: widget.bookPostedBy,),
>>>>>>> parent of 58e121a (Formatting Changes)
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor:Colors.blue,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
