// ignore: file_names
import 'package:firebase/src/common_widegts/customProductDetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BagdetailScreen extends StatefulWidget {
  const BagdetailScreen({super.key});

  @override
  State<BagdetailScreen> createState() => _BagdetailScreenState();
}

class _BagdetailScreenState extends State<BagdetailScreen> {
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
          image: const AssetImage('assets/images/bagbig.png'),
          productName: 'Women Bag',
          productDescription: 'Leather',
          productPrice: '\$374.00',
          cartProductName: 'Women Leather Bag',
          cartProductReviews: '(328 reviews)',
          cartProductPrice: '\$374',
          cartProductImage: Image.asset(
            'assets/images/bagbig.png',
            fit: BoxFit.cover,
          ),
        ));
  }
}
