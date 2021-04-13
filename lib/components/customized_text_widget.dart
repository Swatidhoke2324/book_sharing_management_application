import 'package:flutter/material.dart';

class CustomizedTextWidget extends StatelessWidget {
  final text;
  final textColor;
  final textFontSize;
  final textFont;
  final textFontWeight;
  final textAlignment;
  final textUnderline;
  final ctwPaddingMultiple;
  final onPress;

  const CustomizedTextWidget(
      {Key key,
      this.text,
      this.textColor,
      this.textFontSize,
      this.textFont,
      this.textFontWeight,
      this.textAlignment,
      this.textUnderline,
      this.ctwPaddingMultiple, this.onPress})
      : super(key: key);

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.only(top: height * ctwPaddingMultiple),
        child: Align(
          alignment: textAlignment,
          child: Text(
            text,
            style: TextStyle(
              fontSize: width * textFontSize,
              fontWeight: textFontWeight,
              color: textColor,
              fontFamily: "$textFont",
              decoration: textUnderline,
            ),
          ),
        ),
      ),
    );
  }
}
