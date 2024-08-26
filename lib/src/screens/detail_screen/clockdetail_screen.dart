import 'package:firebase/src/common_widegts/customProductDetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ClockdetailScreen extends StatefulWidget {
  const ClockdetailScreen({super.key});

  @override
  State<ClockdetailScreen> createState() => _ClockdetailScreenState();
}

class _ClockdetailScreenState extends State<ClockdetailScreen> {
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
          image: AssetImage('assets/images/deskwatch.png'),
          productName: 'Desk Clock',
          productDescription: 'Retro',
          productPrice: '\$125.00',
          cartProductName: 'Retro Desk Clock',
          cartProductReviews: '(3721 reviews)',
          cartProductPrice: '\$125',
          cartProductImage: Image.asset(
            'assets/images/deskwatch.png',
            fit: BoxFit.cover,
          ),
        ));
  }
}
