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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Explore",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Color(0xFFECF0F3),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Category of Books",
                    style: TextStyle(
                      color: Color(0xFF223D6B),
                      fontSize: 18,
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
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          onPress: null,
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
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
                      fontSize: 18,
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
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          onPress: null,
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
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
                      fontSize: 18,
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
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          onPress: null,
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
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
                      fontSize: 18,
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
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          onPress: null,
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
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
                      fontSize: 18,
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
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          onPress: null,
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
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
                      fontSize: 18,
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
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          onPress: null,
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
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
                      fontSize: 18,
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
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          onPress: null,
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                      Container(
                        child: CustomizedGridTile(
                          Image: Image.network(
                            "https://dt2gwe7hif2g5.cloudfront.net/assets/BSC_login.png",
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
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
