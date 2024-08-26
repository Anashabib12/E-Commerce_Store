import 'package:firebase/src/common_widegts/customProductDetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WatchdetailScreen extends StatefulWidget {
  const WatchdetailScreen({super.key});

  @override
  State<WatchdetailScreen> createState() => _WatchdetailScreenState();
}

class _WatchdetailScreenState extends State<WatchdetailScreen> {
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
          image: AssetImage('assets/images/handwatch.png'),
          productName: 'Hand Watch',
          productDescription: 'Leather',
          productPrice: '\$386.00',
          cartProductName: 'Hand Watch For Men',
          cartProductReviews: '(2719 reviews)',
          cartProductPrice: '\$386.00',
          cartProductImage: Image.asset('assets/images/handwatch.png',fit: BoxFit.cover,),
        ));
  }
}
