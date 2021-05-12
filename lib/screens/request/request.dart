import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/screens/explore/explore.dart';
import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  _Request createState() => _Request();
}

class _Request extends State<Request> {
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 18,
      color: Color(0xFF193566),
    );
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF193566),
            title: Text(
              "Requests",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFC5D3EA), Color(0xFF193566)],
                ),
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
              ),
              indicatorColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Sent',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Received',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Color(0xFFECF0F3),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                    ),
                    Icon(
                      Icons.question_answer_outlined,
                      size: 60,
                      color: Color(0xFF193566),
                    ),
                    Text(
                      'No Request Sent',
                      style: optionStyle,
                    ),
                    CustomizedNeumorphicButton(
                      fontSize: 24.0,
                      buttonText: "Explore",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Explore();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                    ),
                    Icon(
                      Icons.question_answer_outlined,
                      size: 60,
                      color: Color(0xFF193566),
                    ),
                    Text(
                      'No Request Received',
                      style: optionStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
