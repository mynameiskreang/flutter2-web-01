import 'package:flutter/material.dart';
import 'package:flutter_application/constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;

  const MenuItem({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(color: kTextColor.withOpacity(0.3), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}