import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/responsive.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Total Customers
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade100,
                                blurRadius: 20,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Customers",
                                style: AppFonts.Medium16(Colors.black54),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "1200",
                                style: AppFonts.semibold24(Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),

                      // Total Products
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade100,
                                blurRadius: 20,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Products",
                                style: AppFonts.Medium16(Colors.black54),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "12,678",
                                style: AppFonts.semibold24(Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
