import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/components/custom_button.dart';
import 'package:admin_ecom/constant.dart';
import 'package:admin_ecom/pages/bottom_nav_control.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Background color
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100, // Light shadow
              offset: Offset(0, -2), // Shadow from top
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
      backgroundColor: Color(0xffF7F9FD),
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
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(height: 16),
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
                        SizedBox(height: 12),
                        Divider(
                          color: Color(0xffE6E6E6),
                          thickness: 1.0,
                        ),
                        SizedBox(height: 12),
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 12),
                            child: Column(
                              children: [
                                // sub total
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sub Total',
                                      style:
                                          AppFonts.Medium16(Color(0xff626262)),
                                    ),
                                    Spacer(),
                                    Text(
                                      '₹999.00',
                                      style:
                                          AppFonts.Medium16(Color(0xff2D930B)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Divider(
                                  color: Color(0xffE6E6E6),
                                  thickness: 1.0,
                                ),
                                SizedBox(height: 8),
                                // payment method
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Payment',
                                      style:
                                          AppFonts.Medium14(Color(0xff626262)),
                                    ),
                                    Spacer(),
                                    Text(
                                      'UPI(GPAY)',
                                      style: AppFonts.Medium14(Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                // qty
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Qty',
                                      style:
                                          AppFonts.Medium14(Color(0xff626262)),
                                    ),
                                    Spacer(),
                                    Text(
                                      '02',
                                      style: AppFonts.Medium14(Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                // discount
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Discount',
                                      style:
                                          AppFonts.Medium14(Color(0xff626262)),
                                    ),
                                    Spacer(),
                                    Text(
                                      '12%',
                                      style: AppFonts.Medium14(Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                // delivery fees
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Fees',
                                      style:
                                          AppFonts.Medium14(Color(0xff626262)),
                                    ),
                                    Spacer(),
                                    Text(
                                      '₹50.00',
                                      style:
                                          AppFonts.Medium14(Color(0xff2D930B)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Divider(
                                  color: Color(0xffE6E6E6),
                                  thickness: 1.0,
                                ),
                                SizedBox(height: 8),
                                // delivery fees
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Grand Total',
                                      style: AppFonts.Medium16(Colors.black),
                                    ),
                                    Spacer(),
                                    Text(
                                      '₹899.00',
                                      style:
                                          AppFonts.Medium16(Color(0xff2D930B)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Divider(
                          color: Color(0xffE6E6E6),
                          thickness: 1.0,
                        ),
                        SizedBox(height: 12),
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF6F6F6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 16.0, top: 16, bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 2,
                              children: [
                                Text(
                                  'Download/View Invoice',
                                  style: AppFonts.Medium14(Colors.black),
                                ),
                                Spacer(),
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
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
