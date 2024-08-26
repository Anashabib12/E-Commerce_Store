import 'package:firebase/src/common_widegts/product_card.dart';
import 'package:firebase/src/screens/detail_screen/bagdetail_screen.dart';
import 'package:firebase/src/screens/detail_screen/clockdetail_screen.dart';
import 'package:firebase/src/screens/detail_screen/hatDetail_screen.dart';
import 'package:firebase/src/screens/detail_screen/shoedetail_screen.dart';
import 'package:firebase/src/screens/detail_screen/smartwatchDetail_screen.dart';
import 'package:firebase/src/screens/detail_screen/tableDetail_screen.dart';
import 'package:firebase/src/screens/detail_screen/vasedetail_screen.dart';
import 'package:firebase/src/screens/detail_screen/watchdetail_screen.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
        title: const Text("Popular Product"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.shopping_cart4))
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HatdetailScreen()));
                    },
                    child: ProductCard(
                        image: 'assets/images/cap.png',
                        text: 'Unisex Straw Hat',
                        reviewText: '(271 reviews)',
                        price: '\$36.00',
                        constraints: constraints),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VasedetailScreen()));
                    },
                    child: ProductCard(
                        image: 'assets/images/flower.png',
                        text: 'Design Orange Vase',
                        reviewText: '(2184 reviews)',
                        price: '\$248.00',
                        constraints: constraints),
                  )
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BagdetailScreen()));
                    },
                    child: ProductCard(
                        image: 'assets/images/bagbig.png',
                        text: 'Women Leather Bag',
                        reviewText: '(328 reviews)',
                        price: '\$374.00',
                        constraints: constraints),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClockdetailScreen()));
                    },
                    child: ProductCard(
                        image: 'assets/images/deskwatch.png',
                        text: 'Retro Desk Clock',
                        reviewText: '(3721 reviews)',
                        price: '\$125.00',
                        constraints: constraints),
                  )
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WatchdetailScreen()));
                    },
                    child: ProductCard(
                        image: 'assets/images/handwatch.png',
                        text: 'Hand Watch For Men',
                        reviewText: '(2719 reviews)',
                        price: '\$386.00',
                        constraints: constraints),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShoedetailScreen()));
                    },
                    child: ProductCard(
                        image: 'assets/images/shoe.png',
                        text: 'Nike Air Max 270',
                        reviewText: '(4584 reviews)',
                        price: '\$2478.00',
                        constraints: constraints),
                  ),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SmartwatchdetailScreen()));
                    },
                    child: ProductCard(
                        image: 'assets/images/smartwatch.png',
                        text: 'Smart Watch',
                        reviewText: '(6719 reviews)',
                        price: '\$2896.00',
                        constraints: constraints),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabledetailScreen()));
                    },
                    child: ProductCard(
                        image: 'assets/images/table.png',
                        text: 'Wooden Coffee Table',
                        reviewText: '(7884 reviews)',
                        price: '\$7658.00',
                        constraints: constraints),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
