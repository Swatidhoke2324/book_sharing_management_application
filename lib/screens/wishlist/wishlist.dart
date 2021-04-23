import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Wishlist extends StatefulWidget {
  @override
  _Wishlist createState() => _Wishlist();
}

class _Wishlist extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Wishlist",
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
                CupertinoIcons.heart_circle_fill,
                size: 60,
              ),
              Text(
                'Wishlist',
                style: optionStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
