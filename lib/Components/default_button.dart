import 'package:flutter/material.dart';
import 'package:flutter_application/constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
          onPressed: press,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
            foregroundColor: MaterialStateProperty.all<Color>(kTextColor),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
                    return kSecondColor.withOpacity(0.04);
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed))
                    return kSecondColor.withOpacity(0.12);
                  return kSecondColor.withOpacity(0.12);
                }),
          ),
          child: Text(text.toUpperCase())),
    );
  }
}