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
    Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Icon(
          Icons.add_photo_alternate,
          size: 60,
        ),
        Text(
          'Upload',
          style: optionStyle,
        ),
      ],
    ),
    Column(
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
    Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Icon(
          CupertinoIcons.eyeglasses,
          size: 60,
        ),
        Text(
          'Explore',
          style: optionStyle,
        ),
      ],
    ),
    Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Icon(
          CupertinoIcons.heart_circle_fill,
          size: 60,
        ),
        Text(
          'Wishlist',
          style: optionStyle,
        ),
      ],
    ),
    Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Icon(
          CupertinoIcons.line_horizontal_3_decrease_circle_fill,
          size: 60,
        ),
        Text(
          'More',
          style: optionStyle,
        ),
      ],
    ),
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
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Book Sharing App",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
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

