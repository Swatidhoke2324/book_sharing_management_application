import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../all_book.dart';

import 'add_to_cart.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  final bookName;
  final type;
  final imageUrl;
  final authorName;


  const Body({Key key, this.product, this.bookName, this.type, this.imageUrl, this.authorName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      // ColorAndSize(product: product),
                      // SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product,authorName: authorName,),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product,type: type,)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product,bookName: bookName,type: type,imageUrl: imageUrl,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
