import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/app/modules/discovery_screen/discovery_screen.dart';

import '../cart_screen.dart';
import '../home/home_screen.dart';
import '../thunder_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      Custom_BottomNavigationBarState();
}

class Custom_BottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> pages = [
    const HomeScreen(), // index 0
    const DiscoveryScreen(), // index 1
    const ThunderScreen(), // index 2
    const CartScreen(), // index 3
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        // selectedIconTheme: const IconThemeData(color: Colors.amber),
        selectedItemColor: Colors.amber,
        unselectedItemColor: const Color(0xff8c8f99),
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        backgroundColor: const Color(0xff161A26),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Explore",
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt),
            label: "Stats",
            // backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
            //  backgroundColor: Colors.transparent,
          ),
        ],
        showSelectedLabels: false, // for the text with icons
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
