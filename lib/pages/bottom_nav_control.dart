import 'package:admin_ecom/components/bottom_nav_bar.dart';
import 'package:admin_ecom/pages/dashboard_screen.dart';
import 'package:admin_ecom/pages/orders_screen.dart';
import 'package:admin_ecom/pages/profile_screen.dart';
import 'package:admin_ecom/pages/product_screen.dart';
import 'package:flutter/material.dart';

class BottomNavControl extends StatefulWidget {
  const BottomNavControl({super.key});

  @override
  State<BottomNavControl> createState() => _BottomNavControlState();
}

class _BottomNavControlState extends State<BottomNavControl> {
  // this selected index to control bottom nav bar
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    DashboardScreen(),
    ProductScreen(),
    OrdersScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
