import 'package:flutter/material.dart';

class ShowBookDetail extends StatefulWidget {
  final uploadedBookNo;
  final bookName;
  final bookAuthor;
  final bookEdition;
  final bookISBN;
  final frontViewUrl;
  final backViewUrl;
  final threeDViewUrl;
  final sell;
  final lend;
  final donate;

  const ShowBookDetail(
      {Key key,
      this.uploadedBookNo,
      this.bookName,
      this.bookAuthor,
      this.bookEdition,
      this.bookISBN,
      this.frontViewUrl,
      this.backViewUrl,
      this.threeDViewUrl,
      this.sell,
      this.lend,
      this.donate})
      : super(key: key);

  @override
  _ShowBookDetailState createState() => _ShowBookDetailState();
}

class _ShowBookDetailState extends State<ShowBookDetail> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF223D6B),
        title: Text(
          "Book Detail",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child:Column(
          children: [
            Text("Book Name - ${widget.bookName}"),
            Text("Book Author - ${widget.bookAuthor}"),
            Text("Book Edition - ${widget.bookEdition}"),
            Text("Book ISBN - ${widget.bookISBN}"),
            Row(
              children: [
                SizedBox(width: width*0.23,),
                Container(
                  height: height*0.05,
                  child: Image.network(
                          widget.frontViewUrl,
                          fit: BoxFit.cover
                      ),
                ),
                SizedBox(width: width*0.05,),
                Container(
                  height: height*0.05,
                  child: Image.network(
                      widget.backViewUrl,
                      fit: BoxFit.cover
                  ),
                ),
                SizedBox(width: width*0.05,),
                Container(
                  height: height*0.05,
                  child: Image.network(
                      widget.threeDViewUrl,
                      fit: BoxFit.cover
                  ),
                ),
              ],
            ),
            Text("Purpose - ${widget.lend}, ${widget.sell}, ${widget.donate}"),
          ],
        ),
      ),
      backgroundColor: Color(0xFFECF0F3),
    );
  }
}
