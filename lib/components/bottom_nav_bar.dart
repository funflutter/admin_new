import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:heroicons/heroicons.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        gap: 6,
        tabMargin: EdgeInsets.only(top: 14, bottom: 30),
        color: Colors.grey.shade500,
        activeColor: const Color.fromARGB(255, 32, 4, 147),
        tabBackgroundColor: const Color.fromARGB(255, 237, 243, 248),
        backgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
          GButton(
            icon: Icons.circle, // dummy icon (won't be shown)
            iconColor: Colors.transparent, // make it invisible
            leading: HeroIcon(
              HeroIcons.squares2x2,
              style: HeroIconStyle.mini,
              size: 20,
            ),
            text: 'Dashboard',
            textStyle: AppFonts.Medium14(Colors.black),
          ),
          GButton(
            icon: Icons.circle, // dummy icon (won't be shown)
            iconColor: Colors.transparent, // make it invisible
            leading: HeroIcon(
              HeroIcons.cube,
              style: HeroIconStyle.mini,
              size: 20,
            ),
            text: 'Products',
            textStyle: AppFonts.Medium14(Colors.black),
          ),
          GButton(
            icon: Icons.circle, // dummy icon (won't be shown)
            iconColor: Colors.transparent, // make it invisible
            leading: HeroIcon(
              HeroIcons.documentText,
              style: HeroIconStyle.mini,
              size: 20,
            ),
            text: 'History',
            textStyle: AppFonts.Medium14(
              Colors.black,
            ),
          ),
          GButton(
            icon: Icons.circle, // dummy icon (won't be shown)
            iconColor: Colors.transparent, // make it invisible
            leading: HeroIcon(
              HeroIcons.user,
              style: HeroIconStyle.mini,
              size: 20,
            ),
            text: 'Profile',
            textStyle: AppFonts.Medium14(
              Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
