import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/explore/explore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ValidateRequestPage extends StatefulWidget {
  const ValidateRequestPage({Key key}) : super(key: key);

  @override
  _ValidateRequestPageState createState() => _ValidateRequestPageState();
}

class _ValidateRequestPageState extends State<ValidateRequestPage> {
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  void getData() {
    FirebaseFirestore.instance
        .collection('BorrowRequests')
        .doc(loggedInEmail)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      setState(() {
        if (documentSnapshot.exists) {
          bookBorrowedDetails = documentSnapshot.data();
          sentRequestList = bookBorrowedDetails["SentRequests"];
          receivedRequestList = bookBorrowedDetails["ReceivedRequests"];
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (sentRequestList.length==0) {
      return NoRequest();
    } else {
      return Requests();
    }
  }
}

class Requests extends StatelessWidget {
  const Requests({Key key}) : super(key: key);
  customCard({
    String lenderName,
    String lenderEmail,
    String lenderContactNo,
  }) {
    return Card(
      child: Column(
        children: [
          Text("$lenderName"),
          Text("$lenderEmail"),
          Text("$lenderContactNo"),
        ],
      ),
    );
  }
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
              "Requests for Borrowing",
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
                    Container(
                        height: 230.0,
                        child: ListView.separated(
                          itemCount: sentRequestList.length,
                          itemBuilder: (context, int index) {
                            return customCard(
                              lenderName:sentRequestList[index]["LenderName"],
                              lenderEmail:sentRequestList[index]["LenderEmail"],
                              lenderContactNo:sentRequestList[index]["LenderPhoneNo"],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                        )),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                    ),
                    Container(
                        height: 230.0,
                        child: ListView.separated(
                          itemCount: receivedRequestList.length,
                          itemBuilder: (context, int index) {
                            return customCard(
                              lenderName:receivedRequestList[index]["BorrowerName"],
                              lenderEmail:receivedRequestList[index]["BorrowerEmail"],
                              lenderContactNo:receivedRequestList[index]["BorrowerPhoneNo"],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                        )),
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

class NoRequest extends StatefulWidget {
  @override
  _NoRequest createState() => _NoRequest();
}

class _NoRequest extends State<NoRequest> {
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
              "Requests for Borrowing",
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