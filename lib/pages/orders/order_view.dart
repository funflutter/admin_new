import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/constant.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FD),
      body: Column(
        children: [
          CustomAppBar(
            onTap: () => Navigator.pop(context),
            secondText: 'My Order',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 250,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bracelet (Gold)',
                            style: AppFonts.semibold16(Colors.black),
                          ),
                          Row(
                            spacing: 8,
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
                                      style: AppFonts.Medium12(Colors.white),
                                    ),
                                  ),
                                ),
                              ),
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
                                      style: AppFonts.Medium12(Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '₹899/-',
                            style: AppFonts.semibold16(
                              Color(0xff2D930B),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '₹1200',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.3,
                              color: Color(0xff666666),
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffEAF6EC),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '8% Discount',
                                style: AppFonts.Medium12(
                                  Color(0xff28A745),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                  height: 10,
                                  width: 1,
                                  color: Color(0xff5E625E)),
                              SizedBox(width: 5),
                              Text(
                                '9 Days Left',
                                style: AppFonts.Medium12(
                                  Color(0xff5E625E),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Divider(
                        color: Color(0xffE6E6E6),
                        thickness: 1.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffF6F6F6),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Product Category',
                                      style:
                                          AppFonts.Medium12(Color(0xff626262)),
                                    ),
                                    Text(
                                      'Bracelets',
                                      style: AppFonts.Medium14(Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffF6F6F6),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Delivery Charges',
                                      style:
                                          AppFonts.Medium12(Color(0xff626262)),
                                    ),
                                    Text(
                                      '₹50.00',
                                      style:
                                          AppFonts.Medium14(Color(0xff2D930B)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Divider(
                        color: Color(0xffE6E6E6),
                        thickness: 1.0,
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffF6F6F6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 2,
                                  children: [
                                    Text(
                                      'Payment Method',
                                      style:
                                          AppFonts.Medium12(Color(0xff626262)),
                                    ),
                                    Text(
                                      'UPI (GPay)',
                                      style: AppFonts.Medium14(Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffF6F6F6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  spacing: 2,
                                  children: [
                                    Text(
                                      'Delivery Charges',
                                      style:
                                          AppFonts.Medium12(Color(0xff626262)),
                                    ),
                                    Text(
                                      '₹50.00',
                                      style:
                                          AppFonts.Medium14(Color(0xff2D930B)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 6.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 2,
                            children: [
                              Text(
                                'Delivery Charges',
                                style: AppFonts.Medium12(Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 200),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
