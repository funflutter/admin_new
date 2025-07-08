import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/components/textform_field.dart';
import 'package:admin_ecom/responsive.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> filterList = [
    'All',
    'Earings',
    'Bangles',
    'Chains',
  ];
  List<String> filterCount = [
    '234',
    '49',
    '120',
    '12',
  ];
  int currentIndex = 0;
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
                  secondText: 'My Products',
                  buttonText: 'Add Products',
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // search text field
                      MyTextFormField(),

                      SizedBox(height: 16),

                      // filter's list
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: filterList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: currentIndex == index
                                        ? Colors.black
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            filterList[index],
                                            style: AppFonts.Medium14(
                                                currentIndex == index
                                                    ? Colors.white
                                                    : Colors.black),
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            height: 20,
                                            decoration: BoxDecoration(
                                              color: currentIndex == index
                                                  ? Colors.white
                                                  : Color(0xff666666),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 6.0),
                                              child: Center(
                                                child: Text(
                                                  filterCount[index],
                                                  style: AppFonts.Medium12(
                                                      currentIndex == index
                                                          ? Colors.black
                                                          : Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // product's list
                Expanded(
                  child: Scrollbar(
                    radius: Radius.circular(100),
                    thickness: 3,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(12),
                      child: Container(
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
                          children: List.generate(5, (index) {
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
                                                    Colors.black),
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
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing: -0.3,
                                                      color: Color(0xff666666),
                                                      decoration: TextDecoration
                                                          .lineThrough,
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
                                                        '8% Discount',
                                                        style:
                                                            AppFonts.Medium12(
                                                          Color(0xff28A745),
                                                        ),
                                                      ),
                                                      SizedBox(width: 5),
                                                      Container(
                                                          height: 10,
                                                          width: 1,
                                                          color: Color(
                                                              0xff5E625E)),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        '9 Days Left',
                                                        style:
                                                            AppFonts.Medium12(
                                                          Color(0xff5E625E),
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
                                              child: Text(
                                                '12',
                                                style: AppFonts.Medium12(
                                                    Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                if (index != 4) // Hides divider after last item
                                  Divider(
                                      color: Color(0xffE6E6E6), thickness: 1),
                                if (index != 4) SizedBox(height: 10),
                              ],
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
