import 'package:book_sharing_management_application/screens/explore/search.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController= TextEditingController();
  QuerySnapshot snapshotData;
  bool isExecuted=false;
  @override
  Widget build(BuildContext context) {

    Widget searchedData(){
      return ListView.builder(itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(snapshotData.docs[index].data()["image"]),
          ),
          title: Text(snapshotData.docs[index].data()['title'],style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24.0
          ),),
          subtitle: Text(snapshotData.docs[index].data()['author'],style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24.0
          ),),
        );
      },
      );
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.clear),onPressed: (){
        setState(() {
          isExecuted=false;
        });
      },),
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [GetBuilder<DataController>(
          init: DataController(),
            builder:(val){
              return IconButton(
                  color:Colors.black,
                  icon:Icon(Icons.search),onPressed: (){
                val.queryData(searchController.text).then((value){
                snapshotData =value;
                setState(() {
                  isExecuted=true;
                });
              });
            });
          })
        ],
        title: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: "Search Books",
            hintStyle: TextStyle(color: Colors.black)
          ),controller: searchController,
        ),
        backgroundColor: Colors.white,
      ),
      body: isExecuted? searchedData():Container(
        child: Center(
          child: Text('Search any books',style: TextStyle(
            color: Colors.black,fontSize: 30.0
          ),),
        ),
      ),
    );
  }
}
