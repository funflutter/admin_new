import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/constant.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
        backgroundColor: Color(0xffF9FBFE),
        body: Column(
          children: [
            CustomAppBar(
              firstText: 'Welcome back!',
              secondText: "Alpha Designs Pvt Ltd",
              firstIcon:
                  SvgPicture.asset('assets/svg/delivery.svg', height: 20),
              secondIcon: SvgPicture.asset(
                'assets/svg/notification.svg',
                height: 20,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    spacing: 12,
                    children: [
                      Row(
                        spacing: 12,
                        children: [
                          _totalsContainer(
                              title: 'Total Customers', value: '1,200'),
                          _totalsContainer(
                              title: 'Total Products', value: '12,657'),
                        ],
                      ),
                      _incomeContainer(
                          buttonColor: Color(0xffE8F8E6),
                          title: 'Overall Revenue',
                          value: "464,360",
                          icon: 'assets/png/green_up.png',
                          revenuValue: '23.43%',
                          removeRupee: false),
                      _incomeContainer(
                        buttonColor: Color(0xffFDEAE8),
                        title: 'Monthly Sales',
                        value: "234",
                        icon: 'assets/png/red_down.png',
                        revenuValue: '23.43%',
                        removeRupee: true,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Monthly Target',
                                    style: AppFonts.Medium16(Colors.black),
                                  ),
                                  Image.asset(
                                    'assets/png/arrow-right-up.png',
                                    height: 20,
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              CircularPercentIndicator(
                                radius: 100.0,
                                lineWidth: 20.0,
                                percent: 0.75,
                                center: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '84%',
                                      style: AppFonts.semibold24(Colors.black),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      spacing: 4,
                                      children: [
                                        Text(
                                          '+8.02',
                                          style: AppFonts.Medium12(
                                              Color(0xff4AB227)),
                                        ),
                                        Text(
                                          'from last month',
                                          style: AppFonts.Medium12(
                                              Color(0xff666666)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 17),
                                    Column(
                                      children: [
                                        Text(
                                          'Great Progress!🔥',
                                          style:
                                              AppFonts.Medium16(Colors.black),
                                        ),
                                        SizedBox(height: 2),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          spacing: 1,
                                          children: [
                                            Text(
                                              'Our achievement is increased by',
                                              style: AppFonts.Medium12(
                                                  Color(0xff666666)),
                                            ),
                                            Text(
                                              '76%',
                                              style: AppFonts.Medium12(
                                                  Color(0xff4AB227)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                progressColor: Color(0xffFFCD71),
                                // backgroundColor: Color(0xffFFF7E8),
                                circularStrokeCap: CircularStrokeCap.round,
                                arcType: ArcType.HALF,
                                arcBackgroundColor: Color(0xffFFF7E8),
                              ),
                              Row(
                                spacing: 3,
                                children: [
                                  _monthlyTargetContainer(
                                      title: 'Target,', value: '2,20,500.00'),
                                  _monthlyTargetContainer(
                                      title: 'Revenue', value: '1,90,096.67')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Customer Review’s',
                                    style: AppFonts.Medium16(Colors.black),
                                  ),
                                  Image.asset(
                                    'assets/png/arrow-right-up.png',
                                    height: 20,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '120',
                                        style: AppFonts.semibold24(
                                            Color(0xff4AB227)),
                                      ),
                                      Text(
                                        'Satisfied Customers',
                                        style: AppFonts.Medium12(
                                          Color(0xff666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    width: 1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xffE6E6E6),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '12',
                                        style: AppFonts.semibold24(
                                            Color(0xffEB2B1A)),
                                      ),
                                      Text(
                                        'Unsatisfied Customers',
                                        style: AppFonts.Medium12(
                                          Color(0xff666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}

Widget _totalsContainer({String? title, String? value}) {
  return Expanded(
    child: Container(
      // width: ,
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
            title ?? '',
            style: AppFonts.Medium16(Colors.black54),
          ),
          SizedBox(height: 20),
          Text(
            value ?? '',
            style: AppFonts.semibold24(Colors.black),
          ),
        ],
      ),
    ),
  );
}

Widget _incomeContainer({
  String? title,
  String? value,
  String? icon,
  String? revenuValue,
  bool removeRupee = false,
  Color? buttonColor,
}) {
  return Container(
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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? '',
              style: AppFonts.Medium16(Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              '${removeRupee ? '' : '₹'} ${value ?? ''}',
              style: AppFonts.semibold24(Colors.black),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset('assets/svg/filter.svg'),
            SizedBox(height: 32),
            Container(
              height: 26,
              decoration: BoxDecoration(
                  color: buttonColor, borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
                child: Row(
                  spacing: 4,
                  children: [
                    Image.asset(icon ?? ''),
                    Text(
                      revenuValue ?? '',
                      style: AppFonts.Medium14(Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _monthlyTargetContainer({String? title, String? value}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xffFFF7E8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.5, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title ?? "",
              style: AppFonts.Medium12(
                Color(0xff66635D),
              ),
            ),
            Text(
              '₹${value ?? ''}',
              style: AppFonts.Medium16(
                Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}