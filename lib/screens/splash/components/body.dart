import 'package:book_sharing_management_application/constants.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/get_books_data.dart';
import 'package:book_sharing_management_application/screens/explore/explore.dart';
import 'package:book_sharing_management_application/screens/forgot_password/forgot_password.dart';
import 'package:book_sharing_management_application/screens/home_screen/home_screen.dart';
import 'package:book_sharing_management_application/screens/login_screen/login_screen_body.dart';
import 'package:book_sharing_management_application/screens/sign_up_screen.dart/signup_screen.dart';
import 'package:book_sharing_management_application/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// This is the best practice
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData2();
  }
  void getData2(){
    FirebaseFirestore.instance
        .collection('UserIds')
        .doc("email")
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      setState(() {
        if (documentSnapshot.exists) {
          userIdData = documentSnapshot.data();
          setState(() {
            idList = userIdData["ids"];
          });
          print("$idList");
        }
      });
    });
  }
  void getData() {
    FirebaseFirestore.instance
        .collection('BookUploadedDetails')
        .doc("suyashdahake410@gmail.com")
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      setState(() {
        if (documentSnapshot.exists) {
          bookUploadedDetails = documentSnapshot.data();
          bookUploadedList = bookUploadedDetails["Books"];
         type= bookUploadedList[0]['ForSell'];


          for (int i = 0; i <= bookUploadedList.length; ++i) {
            if (bookUploadedList[i]['ForSell'] == true) {
              setState(() {
                bookUploadedListBuy.add(bookUploadedList[i]);
              });
            }
            if (bookUploadedDetails["Books"][i]['ForLending'] == true) {
              setState(() {
                bookUploadedListBorrow.add(bookUploadedList[i]) ;
              });
            }
            if (bookUploadedDetails["Books"][i]['ForDonation'] == true) {
              setState(() {
                bookUploadedListDonate.add(bookUploadedList[i]);
              });
            }
          }
          print("Book Data $type $bookUploadedListBuy");
          print("Book Data $type $bookUploadedListBorrow");

        }
      });
    });
  }
bool type;
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Book Sharing App, \nLet’s share the books!",
      "image": "assets/images/signup.png"
    },
    {
      "text": "We help people connect with book sharers \naround India",
      "image": "assets/images/signup.png"
    },
    {
      "text": "We show the easy way to share. \nJust stay at home with us",
      "image": "assets/images/signup.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        getBooksData();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeScreen(); //HomeScreen
                            },
                          ),
                        );
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
