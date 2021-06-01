import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Components/app_bar.dart';
import 'package:flutter_application/Screens/Components/body.dart';

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          CustomAppBar(),
          // It will cover 1/3 of free spaces
          Spacer(),
          Body(),
          Spacer(flex: 2,)
          // It will cover 2/3 of free spaces
        ],
      ),
    ));
  }
}
