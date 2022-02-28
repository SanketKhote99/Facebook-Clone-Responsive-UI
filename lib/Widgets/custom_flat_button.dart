import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton(
      {Key? key,
      required this.icon,
      required this.press,
      required this.color,
      required this.text})
      : super(key: key);

  final IconData icon;
  final VoidCallback press;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // ignore: deprecated_member_use
          FlatButton.icon(
            onPressed: press,
            icon: Icon(
              icon,
              color: color,
            ),
            label: Text(text),
          ),
        ],
      ),
    );
  }
}
