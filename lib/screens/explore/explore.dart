import 'package:book_sharing_management_application/books/details/details_screen.dart';
import 'package:book_sharing_management_application/components/customized_grid_tile.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DataModel {
  final String name;
  final String description;

  DataModel({this.name, this.description});

  //Create a method to convert QuerySnapshot from Cloud Firestore to a list of objects of this DataModel
  //This function in essential to the working of FirestoreSearchScaffold

  List<DataModel> dataListFromSnapshot(QuerySnapshot querySnapshot) {
    return querySnapshot.docs.map((snapshot) {
      final Map<String, dynamic> dataMap = snapshot.data();
      return DataModel(
          name: dataMap['name'], description: dataMap['description']);
    }).toList();
  }
}

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String name = "";

  @override
  void initState() {
    super.initState();
    print(bookUploadedList);
  }

  // void getData() {FirebaseFirestore.instance
  //       .collection('UserDetails')
  //       .doc(loggedInEmail)
  //       .get()
  //       .then((DocumentSnapshot documentSnapshot) {
  //     setState(() {
  //       if (documentSnapshot.exists) {
  //         var userDetails = documentSnapshot.data();
  //       }
  //     });
  //   });
  // }

  void makeCards() {
    for (int i = 0; i <= bookUploadedList.length; i++) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Card(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search), hintText: 'Search...'),
            onChanged: (val) {
              setState(() {
                name = val;
              });
            },
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: (name != "" && name != null)
            ? FirebaseFirestore.instance
                .collection('books')
                .where("SearchIndex", arrayContains: name)
                .snapshots()
            : FirebaseFirestore.instance.collection("books").snapshots(),
        builder: (context, snapshot) {
          return (snapshot.connectionState == ConnectionState.waiting)
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot data = snapshot.data.docs[index];
                    return Card(
                      child: Row(
                        children: <Widget>[
                          Image.network(
                            data['imageUrl'],
                            width: 150,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            data['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}

class Explore extends StatefulWidget {
  @override
  _Explore createState() => _Explore();
}

class _Explore extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF193566),
            title: Text(
              "Explore for Books",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: DataSearch());
                  })
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFC5D3EA),
                    Color(0xFF193566),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0)),
                color: Colors.white,
              ),
              indicatorColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Buy',
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
                      'Borrow',
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
                      'Donate',
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
              // GridView.builder(
              //     itemCount: products.length,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) => ItemCard(
              //           product: products[index],
              //           press: () => Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                 builder: (context) => DetailsScreen(
              //                   product: products[index],
              //                 ),
              //               )),
              //         )),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Category of Books",
                          style: TextStyle(
                            color: Color(0xFF223D6B),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 190.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: bookUploadedList.length,
                          itemBuilder: (context, int index) {
                            return customCard(
                                bookName: bookUploadedList[index]["BookName"],
                                bookImage: bookUploadedList[index]["FrontView"],
                                type: "Buy");
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Category of Books",
                          style: TextStyle(
                            color: Color(0xFF223D6B),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 190.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: bookUploadedList.length,
                          itemBuilder: (context, int index) {
                            return customCard(
                                bookName: bookUploadedList[index]["BookName"],
                                bookImage: bookUploadedList[index]["FrontView"],
                                type: "Buy");
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Category of Books",
                          style: TextStyle(
                            color: Color(0xFF223D6B),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 190.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: bookUploadedList.length,
                          itemBuilder: (context, int index) {
                            return customCard(
                                bookName: bookUploadedList[index]["BookName"],
                                bookImage: bookUploadedList[index]["FrontView"],
                                type: "Buy");
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

  customCard({
    String bookName,
    String type,
    String bookImage,
  }) {
    return Container(
      child: CustomizedGridTile(
        onPress: DetailsScreen(
          bookName: bookName,
          type: type,
          imageUrl: bookImage,
        ),
        image: bookImage,
        bookName: bookName,
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {})];
    //actions for app bar
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {});
    //leading icon on the left of the app bar
  }

  @override
  Widget buildResults(BuildContext context) {
    //show some result based on the selection
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //show when someone searches for something
  }
}

class AppBarButton extends StatelessWidget {
  final IconData icon;

  const AppBarButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFECF0F3),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(3, 3),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(5, 2),
              blurRadius: 10,
            ),
          ]),
      child: Image.asset(
        "assets/icons/BSC_drawer.png",
        scale: 25,
      ),
    );
  }
}
