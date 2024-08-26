import 'package:firebase/src/common_widegts/customProductDetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TabledetailScreen extends StatefulWidget {
  const TabledetailScreen({super.key});

  @override
  State<TabledetailScreen> createState() => _TabledetailScreenState();
}

class _TabledetailScreenState extends State<TabledetailScreen> {
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
          image: AssetImage('assets/images/table.png'),
          productName: 'Coffee Table',
          productDescription: 'Wooden',
          productPrice: '\$7658.00',
          cartProductName: 'Wooden Coffee Table',
          cartProductReviews: '(7884 reviews)',
          cartProductPrice: '\$7658.00',
          cartProductImage: Image.asset(
            'assets/images/table.png',
            fit: BoxFit.cover,
          ),
        ));
  }
}
