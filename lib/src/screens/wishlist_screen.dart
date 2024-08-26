import 'package:firebase/src/common_widegts/botNavBar.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Botnavbar(
        selectedIndex: 3,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('wishlist'),
        actions: const [Icon(Icons.search)],
      ),
    );
  }
}
