import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import '../all_book.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  final bookName;
  final type;
  final imageUrl;
  final authorName;
  final reDirect;
  final bookPostedBy;
  final typeOfBook;

  const DetailsScreen({Key key, this.product, this.bookName, this.type, this.imageUrl, this.authorName, this.reDirect, this.bookPostedBy, this.typeOfBook}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Colors.grey,
      appBar: buildAppBar(context),
      body: Body(product: product,bookName: bookName,type: type,imageUrl: imageUrl,authorName: authorName,reDirect: reDirect,typeOfBook: typeOfBook,bookPostedBy: bookPostedBy,),
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
}
