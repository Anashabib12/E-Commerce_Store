import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final BoxConstraints constraints;
  final String image;
  final String text;
  final Color? color;
  final Color? textcolor;
  const CategoryBox(
      {super.key,
      required this.constraints,
      required this.image,
      required this.text,
      this.color,
      this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * 0.19,
      width: constraints.maxWidth * 0.28,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: constraints.maxHeight * 0.08,
            width: constraints.maxWidth * 0.13,
            decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              image,
              
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: constraints.maxWidth * 0.035,
            color: textcolor),
          )
        ],
      ),
    );
  }
}
