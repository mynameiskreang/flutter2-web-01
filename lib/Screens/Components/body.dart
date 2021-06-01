import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "crypto".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          Text(
              "The shape or the borderRadius won't clip the children of the decorated Container.\nIf the clip is required, insert a clip widget as the child of the Container.\nBe aware that clipping may be costly in terms of performance.",
              style: TextStyle(
                  fontSize: 21, color: kSecondColor.withOpacity(0.34))),
          FittedBox(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: kSecondColor, borderRadius: BorderRadius.circular(34)),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        color: kPrimaryColor, shape: BoxShape.circle),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kTextColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Get Stated".toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  SizedBox(width: 15)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
