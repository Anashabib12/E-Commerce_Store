import 'package:firebase/src/common_widegts/botNavBar.dart';
import 'package:firebase/src/common_widegts/category_box.dart';
import 'package:firebase/src/common_widegts/shoe_container.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      bottomNavigationBar: Botnavbar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Category'),
        actions: const [Icon(Icons.search)],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShoeContainer(constraints: constraints),
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/bagicon.png',
                    text: 'Bag',
                    color: Colors.white,
                  ),
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/watchicon.png',
                    text: 'Watch',
                    color: Colors.white,
                  ),
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/shoeicon.png',
                    text: 'Shoes',
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/jewelicon.png',
                    text: 'Jewellry',
                    color: Colors.white,
                  ),
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/sports.png',
                    text: 'Sports',
                    textcolor: Colors.white,
                    color: Color(0xffAA14F0),
                  ),
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/micicon.png',
                    text: 'Music',
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/gifticon.png',
                    text: 'Gift',
                    color: Colors.white,
                  ),
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/flowericon.png',
                    text: 'Plant',
                    color: Colors.white,
                  ),
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/phone.png',
                    text: 'Phone',
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/furniturecion.png',
                    text: 'Furniture',
                    color: Colors.white,
                  ),
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/cosmetic.png',
                    text: 'Cosmetic',
                    color: Colors.white,
                  ),
                  CategoryBox(
                    constraints: constraints,
                    image: 'assets/logo/hobby.png',
                    text: 'Hobby',
                    color: Colors.white,
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
