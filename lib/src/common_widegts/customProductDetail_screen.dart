import 'package:firebase/src/common_widegts/cart_product.dart';
import 'package:firebase/src/screens/cart_list.dart';
import 'package:firebase/src/screens/cartlist_screen.dart';
import 'package:flutter/material.dart';

class CustomproductdetailScreen extends StatefulWidget {
  final String cartProductName;
  final String cartProductReviews;
  final String cartProductPrice;
  final Image cartProductImage;
  final AssetImage image;
  final String productName;
  final String productDescription;
  final String productPrice;
  const CustomproductdetailScreen(
      {super.key,
      required this.image,
      required this.productName,
      required this.productPrice,
      required this.productDescription,
      required this.cartProductName,
      required this.cartProductReviews,
      required this.cartProductPrice,
      required this.cartProductImage});

  @override
  State<CustomproductdetailScreen> createState() =>
      _CustomproductdetailScreenState();
}

class _CustomproductdetailScreenState extends State<CustomproductdetailScreen> {
  void addItem(BoxConstraints constraints) {
    setState(() {
      cartList.add(CartProduct(
        constraints: constraints,
        productName: widget.cartProductName,
        productReviews: widget.cartProductReviews,
        productPrice: widget.cartProductPrice,
        productImage: widget.cartProductImage,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            Center(
              child: CircleAvatar(
                radius: 115,
                backgroundImage: widget.image,
              ),
            ),
            ListTile(
              title: Text(
                widget.productName,
                style: TextStyle(
                    color: const Color(0xff363431),
                    fontSize: constraints.maxWidth * 0.045,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                widget.productDescription,
                style: TextStyle(color: Color(0xff9A9998)),
              ),
              trailing: Text(
                widget.productPrice,
                style: TextStyle(
                    color: const Color(0xffAA14F0),
                    fontSize: constraints.maxWidth * 0.053,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.03),
              child: const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.04),
              child: Text(
                'Color',
                style: TextStyle(
                    color: Color(0xff363431),
                    fontWeight: FontWeight.w500,
                    fontSize: constraints.maxWidth * 0.04),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.04),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: constraints.maxWidth * 0.052,
                    backgroundColor: Color(0xffAA14F0),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.03,
                  ),
                  CircleAvatar(
                    radius: constraints.maxWidth * 0.052,
                    backgroundColor: Color(0xff23A4F7),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.03,
                  ),
                  CircleAvatar(
                    radius: constraints.maxWidth * 0.052,
                    backgroundColor: Color(0xff363431),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.03,
                  ),
                  CircleAvatar(
                    radius: constraints.maxWidth * 0.052,
                    backgroundColor: Color(0xff9A9998),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.04,
                  vertical: constraints.maxHeight * 0.03),
              child: Text(
                'About',
                style: TextStyle(
                    color: Color(0xff363431),
                    fontWeight: FontWeight.w500,
                    fontSize: constraints.maxWidth * 0.04),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.04),
              child: Text(
                'Maecenas cursus magna vitae convallis congue.\nVestibulum dignissim augue odio, congue rutrum magna\ngravida ac. Sed rhoncus eu arcu a tempus.',
                style: TextStyle(
                    color: Color(0xff7A7A7A),
                    fontWeight: FontWeight.w500,
                    fontSize: constraints.maxWidth * 0.03),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Center(
              child: SizedBox(
                width: constraints.maxWidth * 0.9,
                height: constraints.maxHeight * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    addItem(constraints);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartlistScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFAA14F0)),
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.03,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
