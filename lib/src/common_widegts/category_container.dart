import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final BoxConstraints constraints;
  final String text;
  final double width;
  final Color color;
  final Color textcolor;
  final VoidCallback onTap;
  const CategoryContainer(
      {super.key,
      required this.constraints,
      required this.text,
      required this.width,
      required this.color,
      required this.textcolor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: constraints.maxHeight * 0.05,
        width: width,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(7)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textcolor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
