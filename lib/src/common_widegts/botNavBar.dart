import 'package:firebase/src/screens/cartlist_screen.dart';
import 'package:firebase/src/screens/home_screen.dart';
import 'package:firebase/src/screens/profile_screen.dart';
import 'package:firebase/src/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Botnavbar extends StatelessWidget {
  final selectedIndex;
  const Botnavbar({super.key, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (selectedIndex) {
        if (selectedIndex == 0) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
        } else if (selectedIndex == 2) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CartlistScreen(),
              ));
        } else if (selectedIndex == 3) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const WishlistScreen(),
              ));
        } else if (selectedIndex == 4) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ));
        }
      },
      backgroundColor: const Color(0xffFAFAFA),
      height: 80,
      elevation: 0,
      destinations: const [
        NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
        NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: 'Cart'),
        NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
        NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
      ],
    );
  }
}
