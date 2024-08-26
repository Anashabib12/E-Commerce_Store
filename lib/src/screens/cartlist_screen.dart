import 'package:firebase/src/common_widegts/botNavBar.dart';
import 'package:flutter/material.dart';
import 'cart_list.dart';

class CartlistScreen extends StatefulWidget {
  const CartlistScreen({super.key});

  @override
  State<CartlistScreen> createState() => _CartlistScreenState();
}

class _CartlistScreenState extends State<CartlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      bottomNavigationBar: Botnavbar(
        selectedIndex: 1,
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xffFAFAFA),
        centerTitle: true,
        title: const Text("Cart"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: cartList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
