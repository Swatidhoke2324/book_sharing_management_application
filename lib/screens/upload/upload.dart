import 'package:book_sharing_management_application/screens/upload/upload_cards.dart';
import 'package:book_sharing_management_application/screens/upload/upload_for_donation.dart';
import 'package:book_sharing_management_application/screens/upload/upload_for_lending.dart';
import 'package:book_sharing_management_application/screens/upload/upload_for_selling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            // pinned: true,
            // snap: true,
            stretch: true,
            backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Welcome to BOOKITO',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              background: Image.asset(
                "assets/images/signup.png",
                fit: BoxFit.values[1],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildListDelegate(
              [
                UploadCards(
                  cardText: 'Upload Book for Selling',
                  imagePath: 'assets/images/signup.png',
                  imageWidth: 80.0,
                  imageHeight: 80.0,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            UploadForSelling(), // SearchTraintfs(),
                      ),
                    );
                  },
                ),
                UploadCards(
                  cardText: 'Upload Book for Lending',
                  imagePath: 'assets/images/signup.png',
                  imageWidth: 80.0,
                  imageHeight: 80.0,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UploadForLending(),
                      ),
                    );
                  },
                ),
                UploadCards(
                  cardText: 'Upload Book for Donation',
                  imagePath: 'assets/images/signup.png',
                  imageWidth: 80.0,
                  imageHeight: 80.0,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UploadForDonation(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [Text('Hi')],
          //   ),
          // ),
        ],
      ),
    );
  }
}
