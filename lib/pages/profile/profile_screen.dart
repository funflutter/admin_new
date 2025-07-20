import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/constant.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Builder(
      builder: (context) {
        return Scaffold(
          backgroundColor: Color(0xffF9FBFE),
          body: SafeArea(
            child: Column(
              children: [
                CustomAppBar(
                  secondText: 'My Profile',
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          // profile info section
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade100,
                                  blurRadius: 20,
                                  offset: Offset(0, 0),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  alignment: Alignment.center,
                                  children: [
                                    // Background bar
                                    Container(
                                      height: 90,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.grey.shade200,
                                      ),
                                    ),

                                    // Circle Avatar
                                    Positioned(
                                      bottom: -35,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade200,
                                              blurRadius: 10,
                                              offset: Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: Colors.white,
                                          child: Text(
                                            "AL",
                                            style:
                                                AppFonts.Medium24(Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),

                                    // Edit Button
                                    Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/svg/edit.svg',
                                              height: 16,
                                            ),
                                            SizedBox(width: 4),
                                            Text("Edit",
                                                style: AppFonts.Medium14(
                                                    Colors.white)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 48),

                                // Profile Content
                                Text(
                                  "Alpha Designs Pvt Ltd",
                                  style: AppFonts.semibold18(Colors.black),
                                ),

                                SizedBox(height: 10),

                                // contact details
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/call.svg',
                                          height: 14,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          "+91 6382206689",
                                          style:
                                              AppFonts.Medium12(Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 6,
                                      width: 6,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/email.svg',
                                          height: 14,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          "alphadesignspvtltd@gmail.com",
                                          style:
                                              AppFonts.Medium12(Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 12),
                                Divider(
                                  color: Color(0xffE6E6E6),
                                  thickness: 1,
                                ),
                                SizedBox(height: 12),

                                // 1st info
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Company Type",
                                          style: AppFonts.Medium12(
                                            Colors.grey.shade600,
                                          ),
                                        ),
                                        Text(
                                          "Jewellery",
                                          style: AppFonts.Medium14(
                                            Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Place",
                                          style: AppFonts.Medium12(
                                            Colors.grey.shade600,
                                          ),
                                        ),
                                        Text(
                                          "Chennai",
                                          style: AppFonts.Medium14(
                                            Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10),

                                // 2nd info
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "State",
                                          style: AppFonts.Medium12(
                                            Colors.grey.shade600,
                                          ),
                                        ),
                                        Text(
                                          "TamilNadu",
                                          style: AppFonts.Medium14(
                                            Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Country",
                                          style: AppFonts.Medium12(
                                            Colors.grey.shade600,
                                          ),
                                        ),
                                        Text(
                                          "India",
                                          style: AppFonts.Medium14(
                                            Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10),

                                // 3rd info
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address",
                                          style: AppFonts.Medium12(
                                            Colors.grey.shade600,
                                          ),
                                        ),
                                        Text(
                                          "No. 45 voc nagar 9th street, \nT.Nagar, chennai - 606601",
                                          style: AppFonts.Medium14(
                                            Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 16),

                          // cta's
                          categoryList(
                            leadImage: SvgPicture.asset(
                              'assets/svg/money.svg',
                              height: 22,
                            ),
                            title: 'Monthly Budget Tracker',
                          ),
                          categoryList(
                            leadImage: SvgPicture.asset(
                              'assets/svg/product.svg',
                              height: 22,
                            ),
                            title: 'Manage Products',
                          ),
                          categoryList(
                            leadImage: SvgPicture.asset(
                              'assets/svg/review.svg',
                              height: 22,
                            ),
                            title: 'Customer Reviews',
                          ),
                          categoryList(
                            leadImage: SvgPicture.asset(
                              'assets/svg/payment.svg',
                              height: 22,
                            ),
                            title: 'Payment Methods',
                          ),
                          categoryList(
                            leadImage: SvgPicture.asset(
                              'assets/svg/customer.svg',
                              height: 22,
                            ),
                            title: 'Customer List & Transactions',
                          ),
                          categoryList(
                            leadImage: SvgPicture.asset(
                              'assets/svg/logout.svg',
                              height: 22,
                            ),
                            title: 'Logout',
                          ),
                        ],
                      ),
                    ),
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

Widget categoryList({required Widget leadImage, required String title}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 20,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
        child: Row(
          children: [
            leadImage,
            SizedBox(width: 10),
            Text(
              title,
              style: AppFonts.Medium14(Colors.black),
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/svg/right_arrow.svg',
              height: 18,
            ),
          ],
        ),
      ),
    ),
  );
}
