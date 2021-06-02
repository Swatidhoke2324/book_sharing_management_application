import 'package:flutter/material.dart';
import '../../all_book.dart';

import '../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product, this.authorName,
  }) : super(key: key);

  final Product product;
  final authorName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
       "Author Name: $authorName",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
