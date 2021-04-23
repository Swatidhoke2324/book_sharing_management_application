import 'package:book_sharing_management_application/screens/explore/explore.dart';
import 'package:book_sharing_management_application/screens/more/more.dart';
import 'package:book_sharing_management_application/screens/request/request.dart';
import 'package:book_sharing_management_application/screens/upload/upload.dart';
import 'package:book_sharing_management_application/screens/wishlist/wishlist.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String email;

  const HomeScreen({Key key, this.email}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    print('${widget.email}, Hi');
    getData();
  }

  void getData() {
    _firestore
        .collection('UserDetails')
        .doc(widget.email)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      setState(() {
        if (documentSnapshot.exists) {
          var userDetails = documentSnapshot.data();
        }
      });
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Upload(),
    Request(),
    Explore(),
    Wishlist(),
    More(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Upload',
              icon: Icon(CupertinoIcons.add_circled_solid),
            ),
            BottomNavigationBarItem(
              label: 'Request',
              icon: Icon(CupertinoIcons.question_circle_fill),
            ),
            BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(CupertinoIcons.eyeglasses),
            ),
            BottomNavigationBarItem(
              label: 'Wishlist',
              icon: Icon(CupertinoIcons.heart_circle_fill),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: Icon(
                CupertinoIcons.line_horizontal_3_decrease_circle_fill,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
