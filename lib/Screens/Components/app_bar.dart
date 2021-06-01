import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Components/default_button.dart';
import 'package:flutter_application/Screens/Components/menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16))
          ]),
      child: Row(
        children: <Widget>[
          Image.asset("assets/images/logo.png",
              height: 25, alignment: Alignment.topCenter),
          SizedBox(width: 5),
          Text("krypto".toUpperCase(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Spacer(),
          MenuItem(
            title: "home",
            press: () {},
          ),
          MenuItem(
            title: "about",
            press: () {},
          ),
          MenuItem(
            title: "coin",
            press: () {},
          ),
          MenuItem(
            title: "contact",
            press: () {},
          ),
          DefaultButton(text: "Login", press: () {})
        ],
      ),
    );
  }
}
