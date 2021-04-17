import 'package:book_sharing_management_application/screens/splash/components/body.dart';
import 'package:book_sharing_management_application/size_config.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
