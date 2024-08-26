// ignore: file_names
import 'package:firebase/src/common_widegts/customProductDetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class VasedetailScreen extends StatefulWidget {
  const VasedetailScreen({super.key});

  @override
  State<VasedetailScreen> createState() => _VasedetailScreenState();
}

class _VasedetailScreenState extends State<VasedetailScreen> {
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
          image: AssetImage('assets/images/flower.png'),
          productName: 'Orange Vase',
          productDescription: 'Design',
          productPrice: '\$248.00',
          cartProductName: 'Design Orange Vase',
          cartProductReviews: '(2184 reviews)',
          cartProductPrice: '\$248.00',
          cartProductImage: Image.asset(
            'assets/images/flower.png',
            fit: BoxFit.cover,
          ),
        ));
  }
}
