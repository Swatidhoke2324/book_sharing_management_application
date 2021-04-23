import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomizedGridTile extends StatefulWidget {
  final givenheight;
  final onPress;
  final Image;
  const CustomizedGridTile({
    this.givenheight,
    this.onPress,
    this.Image,
  });

  @override
  _CustomizedGridTileState createState() => _CustomizedGridTileState();
}

class _CustomizedGridTileState extends State<CustomizedGridTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Neumorphic(
            margin: EdgeInsets.all(0.0),
            style: NeumorphicStyle(
              depth: 20,
              surfaceIntensity: 0.10,
              intensity: 0.80,
              shape: NeumorphicShape.convex,
              color: Color(0xFFECF0F3),
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
            ),
            child: Container(
              padding: EdgeInsets.all(0.0),
              height: 170.0,
              width: 120.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: widget.givenheight,
                    child: widget.Image,
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

class ImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CarouselSlider(
          items: [
            Container(
              child: Image.network(
                "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
              ),
            ),
            Container(
              child: Image.network(
                "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
              ),
            ),
            Container(
              child: Image.network(
                "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
              ),
            ),
          ],
          options: CarouselOptions(
            // height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
