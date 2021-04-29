import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomizedDropdownButton extends StatefulWidget {
  @override
  _CustomizedDropdownButtonState createState() =>
      _CustomizedDropdownButtonState();
}

class _CustomizedDropdownButtonState extends State<CustomizedDropdownButton> {
  bool isDropdownOpened;
  String dropdownValue = 'Upload a Book for Selling';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Neumorphic(
      margin: EdgeInsets.only(top: height * 0.02),
      style: NeumorphicStyle(
        depth: -20,
        surfaceIntensity: 0.5,
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(31)),
      ),
      child: Material(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.12,
          ),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            dropdownColor: Colors.deepPurple,
            style: const TextStyle(
              color: Color(0xFFA9B6C7),
              fontFamily: "Source Sans. Pro",
              fontSize: 16,
            ),
            underline: Container(
              height: 1,
              color: Colors.purple[800],
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>[
              'Upload a Book for Selling',
              'Upload a Book for Borrowing',
              'Upload a Book for Donation',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
