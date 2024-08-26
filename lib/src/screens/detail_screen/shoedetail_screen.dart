import 'package:firebase/src/common_widegts/customProductDetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShoedetailScreen extends StatefulWidget {
  const ShoedetailScreen({super.key});

  @override
  State<ShoedetailScreen> createState() => _ShoedetailScreenState();
}

class _ShoedetailScreenState extends State<ShoedetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        bottomNavigationBar: NavigationBar(
            backgroundColor: const Color(0xffFAFAFA),
            height: 80,
            elevation: 0,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
            ]),
        appBar: AppBar(
          backgroundColor: const Color(0xffFAFAFA),
          centerTitle: true,
          title: const Text("Product Detail"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart))
          ],
        ),
        body: CustomproductdetailScreen(
          image: AssetImage('assets/images/shoe.png'),
          productName: 'Air Max 270',
          productDescription: 'Nike',
          productPrice: '\$2478.00',
          cartProductName: 'Nike Air Max 270',
          cartProductReviews: '(4584 reviews)',
          cartProductPrice: '\$2478.00',
          cartProductImage: Image.asset(
            'assets/images/shoe.png',
            fit: BoxFit.cover,
          ),
        ));
  }
}
