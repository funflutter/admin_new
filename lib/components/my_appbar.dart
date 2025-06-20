import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 76,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // welcome back message
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: AppFonts.Medium14(Colors.black87),
                    ),
                    SizedBox(height: 2),

                    // company name text
                    Text(
                      "Alpha Desings Pvt Ltd",
                      style: AppFonts.Medium18(Colors.black),
                    ),
                  ],
                ),
                Spacer(),
                // track order
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF4F9),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: HeroIcon(
                    HeroIcons.shoppingCart,
                    style: HeroIconStyle.mini,
                    size: 20,
                  ),
                ),

                SizedBox(width: 12),

                // notification
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF4F9),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: HeroIcon(
                    HeroIcons.bellAlert,
                    style: HeroIconStyle.mini,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
