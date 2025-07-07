import 'package:admin_ecom/components/custom_app_bar.dart';
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
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(
                            height: 20,
                            width: 20,
                            child: Center(
                              child: Image.asset(
                                'assets/png/search.png',
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                          hintText: 'Search...',
                          hintStyle: AppFonts.Medium14(Color(0xff666666)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(100.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(100.0)),
                        ),
                      ),
                      SizedBox(height: 16),
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
                                        spacing: 10,
                                        children: [
                                          Text(
                                            filterList[index],
                                            style: AppFonts.Medium14(
                                                currentIndex == index
                                                    ? Colors.white
                                                    : Colors.black),
                                          ),
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
                      SizedBox(height: 20),
                      Container(
                        height: height * 0.6,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Scrollbar(
                          radius: Radius.circular(100),
                          thickness: 3,
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          child: Container(
                                            height: 80,
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Color(0xffE6E6E6),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
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
                                                  spacing: 4,
                                                  children: [
                                                    Text(
                                                      '₹899/-',
                                                      style:
                                                          AppFonts.semibold16(
                                                        Color(0xff2D930B),
                                                      ),
                                                    ),
                                                    Text(
                                                      '₹1200',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing: -0.3,
                                                        color:
                                                            Color(0xff666666),
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        decorationColor:
                                                            Color(0xff666666),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 16),
                                                Container(
                                                  height: 22,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffEAF6EC),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100)),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 8.0),
                                                    child: Row(
                                                      spacing: 5,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          '8%Discount',
                                                          style:
                                                              AppFonts.Medium12(
                                                            Color(0xff28A745),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 10,
                                                          width: 2,
                                                          color:
                                                              Color(0xff5E625E),
                                                        ),
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
                                            Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Colors.black),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 6.0),
                                                child: Center(
                                                  child: Text(
                                                    '12',
                                                    style: AppFonts.Medium12(
                                                        Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12.0),
                                    child: Divider(
                                      color: Color(0xffE6E6E6),
                                      thickness: 1,
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
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
