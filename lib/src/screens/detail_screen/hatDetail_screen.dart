// ignore: file_names
import 'package:firebase/src/common_widegts/customProductDetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HatdetailScreen extends StatefulWidget {
  const HatdetailScreen({super.key});

  @override
  State<HatdetailScreen> createState() => _HatdetailScreenState();
}

class _HatdetailScreenState extends State<HatdetailScreen> {
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
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
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
      body:  CustomproductdetailScreen(
        image: AssetImage('assets/images/cap.png'),
        productName: 'Straw Hat',
        productDescription: 'Unisex',
        productPrice: '\$36.00',
       cartProductName: 'Unisex Straw Hat',
          cartProductReviews: '(271 reviews)',
          cartProductPrice: '\$36.00',
cartProductImage: Image.asset('assets/images/cap.png',fit: BoxFit.cover,),      )
    );
  }
}