import 'package:flutter/material.dart';

class ButtonCount extends StatelessWidget {
   const ButtonCount({
    Key? key,
    this. kColor,
    this.icon,
    required this.onTap,
  }) : super(key: key);
  final Color? kColor;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: kColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        overlayColor: MaterialStateProperty.all(Colors.lightGreen),
        onTap: onTap,
        child: SizedBox(
          width: 50,
          height: 100,
          child: Icon(icon),
        ),
      ),
    );
  }
}