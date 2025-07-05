import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/responsive.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            Padding(
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
                ],
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
