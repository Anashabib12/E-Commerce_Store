import 'package:firebase/src/common_widegts/botNavBar.dart';
import 'package:firebase/src/common_widegts/category_container.dart';
import 'package:firebase/src/common_widegts/shoe_container.dart';
import 'package:firebase/src/screens/category_screen.dart';
import 'package:firebase/src/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All'; //initial selected category

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      bottomNavigationBar: Botnavbar(
        selectedIndex: 0,
      ),
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        actions: const [Icon(Icons.search_sharp)],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShoeContainer(constraints: constraints),
              SizedBox(
                height: constraints.maxHeight * 0.023,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.05,
                    right: constraints.maxWidth * 0.05,
                    bottom: constraints.maxHeight * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                          color: const Color(0xff363431),
                          fontSize: constraints.maxWidth * 0.042,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CategoryScreen()));
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              color: Color(0xff363431),
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth * 0.05),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryContainer(
                            constraints: constraints,
                            text: 'All',
                            width: constraints.maxWidth * 0.1,
                            color: selectedCategory == 'All'
                                ? const Color(0xffAA14F0)
                                : const Color(0xffF2F2F2),
                            textcolor: selectedCategory == 'All'
                                ? Colors.white
                                : Colors.black,
                            onTap: () {
                              setState(() {
                                selectedCategory = 'All';
                              });
                            }),
                        SizedBox(
                          width: constraints.maxWidth * 0.045,
                        ),
                        CategoryContainer(
                          constraints: constraints,
                          text: 'Electronics',
                          width: constraints.maxWidth * 0.24,
                          color: selectedCategory == 'Electronics'
                              ? const Color(0xffAA14F0)
                              : const Color(0xffF2F2F2),
                          textcolor: selectedCategory == 'Electronics'
                              ? Colors.white
                              : Colors.black,
                          onTap: () {
                            setState(() {
                              selectedCategory = 'Electronics';
                            });
                          },
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.045,
                        ),
                        CategoryContainer(
                          constraints: constraints,
                          text: 'Fashion',
                          width: constraints.maxWidth * 0.2,
                          color: selectedCategory == 'Fashion'
                              ? const Color(0xffAA14F0)
                              : const Color(0xffF2F2F2),
                          textcolor: selectedCategory == 'Fashion'
                              ? Colors.white
                              : Colors.black,
                          onTap: () {
                            setState(() {
                              selectedCategory = 'Fashion';
                            });
                          },
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.045,
                        ),
                        CategoryContainer(
                          constraints: constraints,
                          text: 'Shoes',
                          width: constraints.maxWidth * 0.19,
                          color: selectedCategory == 'Shoes'
                              ? const Color(0xffAA14F0)
                              : const Color(0xffF2F2F2),
                          textcolor: selectedCategory == 'Shoes'
                              ? Colors.white
                              : Colors.black,
                          onTap: () {
                            setState(() {
                              selectedCategory = 'Shoes';
                            });
                          },
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.045,
                        ),
                        CategoryContainer(
                          constraints: constraints,
                          text: 'Furniture',
                          width: constraints.maxWidth * 0.21,
                          color: selectedCategory == 'Furniture'
                              ? const Color(0xffAA14F0)
                              : const Color(0xffF2F2F2),
                          textcolor: selectedCategory == 'Furniture'
                              ? Colors.white
                              : Colors.black,
                          onTap: () {
                            setState(() {
                              selectedCategory = 'Furniture';
                            });
                          },
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: constraints.maxHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Products',
                      style: TextStyle(
                          color: const Color(0xff363431),
                          fontSize: constraints.maxWidth * 0.042,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductScreen()));
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              color: Color(0xff363431),
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: constraints.maxHeight * 0.48,
                    width: constraints.maxWidth * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color(0xffFFFFFF),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.025,
                                  right: constraints.maxWidth * 0.02),
                              child: Icon(
                                Icons.favorite_outline,
                                color: Color(0xffCECECE),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: constraints.maxHeight * 0.015,
                              left: constraints.maxWidth * 0.03,
                              right: constraints.maxWidth * 0.03),
                          height: constraints.maxHeight * 0.2,
                          width: constraints.maxWidth * 0.44,
                          decoration: BoxDecoration(
                              color: const Color(0xfff6f6f8),
                              borderRadius: BorderRadius.circular(70)),
                          child: Image.asset(
                            'assets/images/bag.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.019,
                              left: constraints.maxWidth * 0.02),
                          child: Text(
                            'Leather Women Bag',
                            style: TextStyle(
                                color: Color(0xff090F47),
                                fontWeight: FontWeight.w500,
                                fontSize: constraints.maxWidth * 0.038),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.008,
                              left: constraints.maxWidth * 0.02),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                '(715 reviews)',
                                style: TextStyle(
                                    color: Color(0xff9A9998),
                                    fontWeight: FontWeight.w400,
                                    fontSize: constraints.maxWidth * 0.03),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.015,
                              left: constraints.maxWidth * 0.02),
                          child: Text(
                            '\$135.00',
                            style: TextStyle(
                                color: Color(0xffAA14F0),
                                fontWeight: FontWeight.w600,
                                fontSize: constraints.maxWidth * 0.042),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight * 0.48,
                    width: constraints.maxWidth * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color(0xffFFFFFF),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.025,
                                  right: constraints.maxWidth * 0.02),
                              child: Icon(
                                Icons.favorite_outline,
                                color: Color(0xffCECECE),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: constraints.maxHeight * 0.015,
                              left: constraints.maxWidth * 0.03,
                              right: constraints.maxWidth * 0.03),
                          height: constraints.maxHeight * 0.2,
                          width: constraints.maxWidth * 0.44,
                          decoration: BoxDecoration(
                              color: const Color(0xfff6f6f8),
                              borderRadius: BorderRadius.circular(70)),
                          child: Image.asset(
                            'assets/images/headphone.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.019,
                              left: constraints.maxWidth * 0.02),
                          child: Text(
                            'Wireless Headphones',
                            style: TextStyle(
                                color: Color(0xff090F47),
                                fontWeight: FontWeight.w500,
                                fontSize: constraints.maxWidth * 0.038),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.008,
                              left: constraints.maxWidth * 0.02),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                '(315 reviews)',
                                style: TextStyle(
                                    color: Color(0xff9A9998),
                                    fontWeight: FontWeight.w400,
                                    fontSize: constraints.maxWidth * 0.03),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.015,
                              left: constraints.maxWidth * 0.02),
                          child: Text(
                            '\$65.00',
                            style: TextStyle(
                                color: Color(0xffAA14F0),
                                fontWeight: FontWeight.w600,
                                fontSize: constraints.maxWidth * 0.042),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        );
      }),
    );
  }
}
