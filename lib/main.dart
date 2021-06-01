import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Home/home_screen.dart';
import 'package:flutter_application/constant.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter On Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: WebApp()));
}
