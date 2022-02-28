import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.press,
    this.iconSize,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback press;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize ?? 30,
        color: Colors.black,
        onPressed: press,
      ),
    );
  }
}
