import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomizedTextFormField extends StatefulWidget {
  final hintText;
  final onPress;
  final hideText;
  final inputType;
  final validator;
  final controller;

  const CustomizedTextFormField({
    this.hintText,
    this.onPress,
    this.hideText,
    this.inputType,
    this.validator,
    this.controller,
  });

  @override
  _CustomizedTextFormFieldState createState() =>
      _CustomizedTextFormFieldState();
}

class _CustomizedTextFormFieldState extends State<CustomizedTextFormField> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Neumorphic(
      margin: EdgeInsets.only(top: height * 0.02),
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(31)),
        lightSource: LightSource.topLeft,
        depth: -20,
        intensity: 0.8,
        surfaceIntensity: 0.3,
        shadowDarkColorEmboss: Color(0xFF97A7C3),
        shadowLightColorEmboss: Color(0xFFffffff),
        border: NeumorphicBorder(
          color: Color(0xFF97A7C3),
          width: 0.3,
        ),
      ),
      child: Material(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.07,
          ),
          child: TextFormField(
            obscureText: widget.hideText ? _isHidden : false,
            onChanged: widget.onPress,
            controller: widget.controller,
            validator: widget.validator,
            keyboardType: widget.inputType,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color(0xFFECF0F3),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Color(0xFFA9B6C7),
                fontFamily: "Source Sans Pro",
                fontSize: 16,
              ),
              suffixIcon: widget.hideText
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          _isHidden = !_isHidden;
                        });
                      },
                      child: Icon(
                        _isHidden ? Icons.visibility_off : Icons.visibility,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
