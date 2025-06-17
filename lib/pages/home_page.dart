import 'package:admin_ecom/responsive.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
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
                        style: AppFonts.Medium20(Colors.black),
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Welcome Message
            ],
          ),
        ),
      ),
    );
  }
}
