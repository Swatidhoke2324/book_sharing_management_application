import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  _Request createState() => _Request();
}

class _Request extends State<Request> {
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "Request",
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
                Icons.question_answer_outlined,
                size: 60,
              ),
              Text(
                'Request',
                style: optionStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
