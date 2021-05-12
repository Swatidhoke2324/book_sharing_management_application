import 'package:book_sharing_management_application/components/customized_grid_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
                  colors: [Color(0xFFC5D3EA), Color(0xFF193566)],
                ),
                borderRadius: BorderRadius.circular(50.0),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            child: CustomizedGridTile(
                              onPress: null,
                              Image: Image.asset("assets/images/login.png"),
                            ),
                          ),
                          Container(
                            child: CustomizedGridTile(
                              Image: Image.asset("assets/images/login.png"),
                            ),
                          ),
                          Container(
                            child: CustomizedGridTile(
                              onPress: null,
                              Image: Image.asset("assets/images/login.png"),
                            ),
                          ),
                          Container(
                            child: CustomizedGridTile(
                              Image: Image.asset("assets/images/login.png"),
                            ),
                          ),
                          Container(
                            child: CustomizedGridTile(
                              Image: Image.asset("assets/images/login.png"),
                            ),
                          ),
                          Container(
                            child: CustomizedGridTile(
                              Image: Image.asset("assets/images/login.png"),
                            ),
                          ),
                          Container(
                            child: CustomizedGridTile(
                              Image: Image.asset("assets/images/login.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
                        )),
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                onPress: null,
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                            Container(
                              child: CustomizedGridTile(
                                Image: Image.asset("assets/images/login.png"),
                              ),
                            ),
                          ],
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
