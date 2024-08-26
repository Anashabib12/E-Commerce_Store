import 'package:firebase/src/common_widegts/botNavBar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Botnavbar(
        selectedIndex: 4,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Category'),
        actions: const [Icon(Icons.search)],
      ),
    );
  }
}
