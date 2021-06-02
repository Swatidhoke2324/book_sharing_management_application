
import 'package:book_sharing_management_application/screens/more/contact_us.dart';
import 'package:book_sharing_management_application/screens/more/my_books.dart';
import 'package:book_sharing_management_application/screens/login_screen/login_screen_body.dart';
import 'package:book_sharing_management_application/screens/sign_up_screen.dart/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class More extends StatefulWidget {
  @override
  _More createState() => _More();
}

class _More extends State<More> {

  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color(0xFF193566),
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF193566),
          title: Text(
            "More",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Color(0xFFECF0F3),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(
                          Icons.account_circle_sharp,
                          size: 60,
                          color: Color(0xFF193566),
                        ),
                        title: Text('User Name'),
                        subtitle: Text('Phone Number'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('SignUp'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignUpScreenBody();
                                  },
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('Login'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginScreenBody();
                                  },
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child:GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MyBooks();
                                },
                              ),
                            );
                          },
                          child: ListTile(
                            leading:Icon(
                              Icons.book_online_sharp,
                              size: 40,
                              color: Color(0xFF193566),
                            ),
                            title: Text('My Books'),
                            subtitle: Text('Check your uploaded book status'),
                          ),
                        ),
                      ),


                      Divider(
                        color: Color(0xFFAFAFAF),
                        thickness: 1,
                        height: 5,
                      ),

                      Container(
                        child:GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {print('tapped');},
                          child: ListTile(
                            leading:Icon(
                              CupertinoIcons.heart_circle_fill,
                              size: 40,
                              color: Color(0xFF193566),
                            ),
                            title: Text('Social Works'),
                            subtitle: Text('Gallery of Social Works done by our Team'),
                          ),
                        ),
                      ),

                      Divider(
                        color: Color(0xFFAFAFAF),
                        thickness: 1,
                        height: 5,
                      ),

                      Container(
                        child:GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) {
                        return ContactUs();
                        },
                        ),
                        );
                        },
                          child: ListTile(
                            leading:Icon(
                              CupertinoIcons.phone_fill_arrow_up_right,
                              size: 40,
                              color: Color(0xFF193566),
                            ),
                            title: Text('Contact Us'),
                            subtitle: Text('Help regarding any issue'),
                          ),
                        ),
                      ),

                      Divider(
                        color: Color(0xFFAFAFAF),
                        thickness: 1,
                        height: 5,
                      ),

                      Container(
                        child:GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {print('tapped');},
                          child: ListTile(
                            leading:Icon(
                              CupertinoIcons.envelope_open_fill,
                              size: 40,
                              color: Color(0xFF193566),
                            ),
                            title: Text('Refer and Earn'),
                            subtitle: Text('Invite friends and earn rewards'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Card(
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                    },
                    child: Container(
                      color: Color(0xFF193566),
                      width: 405.0,
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: Text(
                          'FAQs',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                    },
                    child: Container(
                      color: Color(0xFF193566),
                      width: 405.0,
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: Text(
                          'ABOUT US',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: new InkWell(
                    onTap: () {
                      print("tapped");
                    },
                    child: Container(
                      color: Color(0xFF193566),
                      width: 405.0,
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: Text(
                          'LEGAL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
