import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/constant.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Builder(
      builder: (context) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffF9FBFE),
            body: Column(
              children: [
                CustomAppBar(
                  secondText: 'My Orders',
                  secondIcon: SvgPicture.asset(
                    'assets/svg/filter.svg',
                    height: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // timeline divider
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xffE6E6E6),
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text(
                                "Today",
                                style: AppFonts.Medium14(Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xffE6E6E6),
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade100,
                              blurRadius: 20,
                              offset: Offset(0, 0),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: List.generate(3, (index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    // Image Box
                                    Container(
                                      height: 80,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: Color(0xffE6E6E6),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    SizedBox(width: 10),

                                    // Product info + right side number
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Left Column
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Bracelet (Gold)',
                                                style: AppFonts.semibold16(
                                                  Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 2),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Qty:',
                                                    style: AppFonts.Medium14(
                                                      Color(0xff5E625E),
                                                    ),
                                                  ),
                                                  SizedBox(width: 2),
                                                  Text(
                                                    '02',
                                                    style: AppFonts.Medium14(
                                                      Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(height: 16),

                                              // discount container
                                              Container(
                                                height: 22,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffEAF6EC),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 8.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Delivered',
                                                        style:
                                                            AppFonts.Medium14(
                                                          Color(0xff28A745),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),

                                          // Quantity Circle
                                          Container(
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.black,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6.0),
                                            child: Center(
                                              child: Text('12',
                                                  style: AppFonts.Medium12(
                                                      Colors.white)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                if (index != 2) ...[
                                  SizedBox(height: 10),
                                  Divider(
                                      color: Color(0xffE6E6E6), thickness: 1),
                                  SizedBox(height: 10),
                                ]
                              ],
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
