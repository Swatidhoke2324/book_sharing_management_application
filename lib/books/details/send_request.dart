import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/constants.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/home_screen/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SendRequest extends StatefulWidget {
  const SendRequest({
    Key key,
  }) : super(key: key);

  @override
  _SendRequestState createState() => _SendRequestState();
}

class _SendRequestState extends State<SendRequest> {
  @override
  void initState() {
    // TODO: implement initState
    upDateData();
    super.initState();
  }

  void upDateData() {
    FirebaseFirestore.instance
        .collection('BorrowRequests')
        .doc(loggedInEmail)
        .update({
      "SentRequests": userTransactionList +
          [
            {
              "LenderName": lenderName,
              "LenderEmail": lenderEmail,
              "LenderPhoneNo": lenderPhoneNo,
            }
          ],
    });
    FirebaseFirestore.instance
        .collection('BorrowRequests')
        .doc(lenderEmail)
        .update({
      "ReceivedRequests": lenderTransactionList +
          [
            {
              "BorrowerName": loggedInName,
              "BorrowerEmail": loggedInEmail,
              "BorrowerPhoneNo": loggedInPhoneNo,
            }
          ],
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Request Sent"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Request Sent Successful to the Book Owner",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Contact $lenderName",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "PhoneNo: $lenderPhoneNo",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Email: $lenderEmail",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          CustomizedNeumorphicButton(
            fontSize: 20.0,
            buttonText: "Return to Home Screen",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
          ),
          SizedBox(height: 30,),
          Text("Request sent successfully to the Book Owner",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),),
          SizedBox(height: 30,),
          Text("Contact ${widget.lenderName}",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          Text("PhoneNo: ${widget.lenderPhoneNo}",textAlign:TextAlign.center,style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          Text("Email: ${widget.lenderEmail}",textAlign:TextAlign.center,style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
