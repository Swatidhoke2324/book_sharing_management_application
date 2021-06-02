import 'package:book_sharing_management_application/data.dart';
import 'package:flutter/material.dart';
import '../../all_book.dart';

import '../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product, this.type, this.bookName, this.imageUrl,
  }) : super(key: key);

  final Product product;
  final type;
  final bookName;
  final imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Book You Can $type",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "$bookName",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "Rs. 300",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin + 80),
              Container(
                height: 200,
                child: Expanded(
                  child: Hero(
                    tag: "product.id",
                    child: Image.network(
                       imageUrl,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
