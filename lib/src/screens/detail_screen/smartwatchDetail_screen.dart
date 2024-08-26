import 'package:firebase/src/common_widegts/customProductDetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SmartwatchdetailScreen extends StatefulWidget {
  const SmartwatchdetailScreen({super.key});

  @override
  State<SmartwatchdetailScreen> createState() => _SmartwatchdetailScreenState();
}

class _SmartwatchdetailScreenState extends State<SmartwatchdetailScreen> {
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
          image: AssetImage('assets/images/smartwatch.png'),
          productName: 'Smart Watch',
          productDescription: 'Unisex',
          productPrice: '\$2896.00',
          cartProductName: 'Smart Watch',
          cartProductReviews: '(6719 reviews)',
          cartProductPrice: '\$2896',
          cartProductImage: Image.asset(
            'assets/images/smartwatch.png',
            fit: BoxFit.cover,
          ),
        ));
  }
}
