import 'package:flutter/material.dart';

class CartProduct extends StatelessWidget {
  final String productName;
  final String productReviews;
  final String productPrice;
  final Image productImage;

  final BoxConstraints constraints;
  const CartProduct(
      {super.key,
      required this.constraints,
      required this.productName,
      required this.productReviews,
      required this.productPrice,
      required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
              // top: constraints.maxHeight* 0.02,
              left: constraints.maxWidth * 0.035,
              right: constraints.maxWidth * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: constraints.maxHeight * 0.037),
                    child: Text(
                      productName,
                      style: TextStyle(
                          color: const Color(0xff363431),
                          fontSize: constraints.maxWidth * 0.045,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: constraints.maxHeight * 0.013, left: 0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: constraints.maxWidth * 0.043,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: constraints.maxHeight * 0.013,
                            left: constraints.maxWidth * 0.01),
                        child: Text(
                          productReviews,
                          style: TextStyle(
                              color: const Color(0xff9A9998),
                              fontSize: constraints.maxWidth * 0.035,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: constraints.maxHeight * 0.012),
                    child: Text(
                      productPrice,
                      style: TextStyle(
                          color: const Color(0xffAA14F0),
                          fontSize: constraints.maxWidth * 0.051,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Color(0xffEAEBEC), width: 1.8)),
                        child: Center(
                            child: Text(
                          '+',
                          style: TextStyle(
                              color: Color(0xff363431),
                              fontSize: constraints.maxWidth * 0.045),
                        )),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            color: Color(0xff363431),
                            fontSize: constraints.maxWidth * 0.048),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Color(0xffEAEBEC), width: 1.8)),
                        child: Center(
                            child: Text(
                          '-',
                          style: TextStyle(
                              color: Color(0xff363431),
                              fontSize: constraints.maxWidth * 0.045,
                              fontWeight: FontWeight.w800),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.035,
                  ),
                  Container(
                    width: constraints.maxHeight * 0.133,
                    height: constraints.maxHeight * 0.16,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: productImage
                        ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
