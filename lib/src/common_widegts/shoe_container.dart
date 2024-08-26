import 'package:flutter/material.dart';

class ShoeContainer extends StatelessWidget {
  final BoxConstraints constraints;
  const ShoeContainer({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: constraints.maxHeight * 0.04),
        height: constraints.maxHeight * 0.25,
        width: constraints.maxWidth * 0.9,
        decoration: BoxDecoration(
            color: const Color(0xffAA14F0),
            borderRadius: BorderRadius.circular(23)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -constraints.maxHeight * 0.05,
              right: -constraints.maxWidth * 0.04,
              child: Container(
                // width: 100,
                height: 250,
                child: Image.asset(
                  'assets/images/shoee.png',
                  // height: 10000,
                ),
              ),
            ),
            Positioned(
                top: constraints.maxHeight * 0.05,
                left: constraints.maxWidth * 0.05,
                child: Text(
                  'Nike Air Max 270',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: constraints.maxWidth * 0.048,
                      fontWeight: FontWeight.w700),
                )),
            Positioned(
                top: constraints.maxHeight * 0.09,
                left: constraints.maxWidth * 0.05,
                child: Text(
                  'Men\'s Shoes',
                  style: TextStyle(
                      color: const Color(0xff9CA0AF),
                      fontSize: constraints.maxWidth * 0.04,
                      fontWeight: FontWeight.w500),
                )),
            Positioned(
                top: constraints.maxHeight * 0.15,
                left: constraints.maxWidth * 0.05,
                child: Text(
                  '\$290.00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: constraints.maxWidth * 0.053,
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
      ),
    );
  }
}
