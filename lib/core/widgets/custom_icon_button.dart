import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products_task/constants.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.backgroundColor,
    required this.iconColor});
  IconData icon ;
  Color iconColor = kPrimaryColor;
  VoidCallback onPressed;
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 14.3,
          backgroundColor: backgroundColor,
        ),
        IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: iconColor,
          iconSize: 25,
    )
      ],
    );
  }
}
