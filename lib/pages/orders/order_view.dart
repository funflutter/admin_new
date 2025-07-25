import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/components/custom_button.dart';
import 'package:admin_ecom/components/delivery_timeline.dart';
import 'package:admin_ecom/constant.dart';
import 'package:admin_ecom/pages/bottom_nav_control.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  final List<String> labels = [
    'Order Placed',
    'Order Packed',
    'Order Shipped',
    'Delivered',
  ];

  final int currentStep = 4;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              offset: Offset(0, -2),
              blurRadius: 18,
            ),
          ],
        ),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: SafeArea(
          child: CustomButton(
            height: 60,
            color: Colors.black,
            textColor: Colors.white,
            text: "Update Delivery Status",
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavControl(),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffF7F9FD),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              onTap: () => Navigator.pop(context),
              secondText: 'My Order',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // 🔄 Timeline starts here
                      Row(
                        children: [
                          MyTimeLine(
                            isFirst: true,
                            isLast: false,
                            isPast: true,
                            text: "Placed",
                          ),
                          MyTimeLine(
                            isFirst: false,
                            isLast: false,
                            isPast: true,
                            text: "Packed",
                          ),
                          MyTimeLine(
                            isFirst: false,
                            isLast: false,
                            isPast: true,
                            text: "Shipped",
                          ),
                          MyTimeLine(
                            isFirst: false,
                            isLast: true,
                            isPast: false,
                            text: "Delivered",
                          ),
                        ],
                      ),
                      // 🔄 Timeline ends here

                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 250,
                              width: width,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Bracelet (Gold)',
                                  style: AppFonts.semibold16(Colors.black),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 2),
                                        child: Center(
                                          child: Text(
                                            'PR22',
                                            style:
                                                AppFonts.Medium12(Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 2),
                                        child: Center(
                                          child: Text(
                                            'Qty: 12',
                                            style:
                                                AppFonts.Medium12(Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Divider(color: Color(0xffE6E6E6), thickness: 1.0),
                            const SizedBox(height: 12),
                            Container(
                              width: width,
                              decoration: BoxDecoration(
                                color: const Color(0xffF6F6F6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 12),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Sub Total',
                                            style: AppFonts.Medium16(
                                                Color(0xff626262))),
                                        Spacer(),
                                        Text('₹999.00',
                                            style: AppFonts.Medium16(
                                                Color(0xff2D930B))),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Divider(
                                        color: Color(0xffE6E6E6), thickness: 1),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text('Payment',
                                            style: AppFonts.Medium14(
                                                Color(0xff626262))),
                                        Spacer(),
                                        Text('UPI(GPAY)',
                                            style: AppFonts.Medium14(
                                                Colors.black)),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text('Qty',
                                            style: AppFonts.Medium14(
                                                Color(0xff626262))),
                                        Spacer(),
                                        Text('02',
                                            style: AppFonts.Medium14(
                                                Colors.black)),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text('Discount',
                                            style: AppFonts.Medium14(
                                                Color(0xff626262))),
                                        Spacer(),
                                        Text('12%',
                                            style: AppFonts.Medium14(
                                                Colors.black)),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text('Delivery Fees',
                                            style: AppFonts.Medium14(
                                                Color(0xff626262))),
                                        Spacer(),
                                        Text('₹50.00',
                                            style: AppFonts.Medium14(
                                                Color(0xff2D930B))),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Divider(
                                        color: Color(0xffE6E6E6), thickness: 1),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text('Grand Total',
                                            style: AppFonts.Medium16(
                                                Colors.black)),
                                        Spacer(),
                                        Text('₹899.00',
                                            style: AppFonts.Medium16(
                                                Color(0xff2D930B))),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Divider(color: Color(0xffE6E6E6), thickness: 1.0),
                            const SizedBox(height: 12),
                            Container(
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffF6F6F6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  right: 16.0,
                                  top: 16,
                                  bottom: 16,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Download/View Invoice',
                                      style: AppFonts.Medium14(Colors.black),
                                    ),
                                    const Spacer(),
                                    SvgPicture.asset(
                                      'assets/svg/download.svg',
                                      height: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
