import 'package:book_sharing_management_application/constants.dart';
import 'package:flutter/material.dart';

class SendRequest extends StatefulWidget {
  final lenderName;
  final lenderEmail;
  final lenderPhoneNo;

  const SendRequest({Key key, this.lenderName, this.lenderEmail, this.lenderPhoneNo}) : super(key: key);

  @override
  _SendRequestState createState() => _SendRequestState();
}

class _SendRequestState extends State<SendRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kPrimaryColor,title: Text("Request Sent"),),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Text("Request Sent Successful to the Book Owner",textAlign:TextAlign.center,style: TextStyle(fontSize: 25),),
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
