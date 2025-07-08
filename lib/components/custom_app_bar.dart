import 'package:admin_ecom/components/custom_button.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  final String? firstText;
  final String? secondText;
  final Widget? firstIcon;
  final Widget? secondIcon;
  final String? buttonText;
  final void Function()? onTap;
  const CustomAppBar({
    super.key,
    this.firstText,
    this.secondText,
    this.firstIcon,
    this.secondIcon,
    this.buttonText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 20,
            offset: Offset(0, 2),
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                onTap != null
                    ? GestureDetector(
                        onTap: onTap,
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE6E6E6),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade100,
                                blurRadius: 20,
                                offset: Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/svg/arrow_back.svg',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
                onTap != null ? SizedBox(width: 10) : SizedBox(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    firstText != null
                        ? Text(
                            firstText ?? '',
                            style: AppFonts.Medium14(Colors.black54),
                          )
                        : SizedBox(),

                    // company name text
                    Text(
                      secondText ?? "",
                      style: AppFonts.Medium20(Colors.black),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  spacing: 10,
                  children: [
                    firstIcon != null ? _icons(firstIcon) : SizedBox(),
                    secondIcon != null ? _icons(secondIcon) : SizedBox(),
                    buttonText != null
                        ? CustomButton(
                            onTap: () {},
                            text: buttonText ?? '',
                            height: 30,
                            color: Colors.black,
                            textColor: Colors.white,
                            style: AppFonts.Medium18(Colors.black),
                          )
                        : SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _icons(Widget? child) {
  return Container(
    height: 32,
    width: 32,
    decoration: BoxDecoration(
      color: Color(0xffEFF4F9),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Center(
      child: child,
    ),
  );
}


//  AppBar(
//       toolbarHeight: 76,
//       backgroundColor: Colors.white,
//       automaticallyImplyLeading: false,
//       title: Align(
//         alignment: Alignment.centerLeft,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // welcome back message
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Welcome Back!",
//                       style: AppFonts.Medium14(Colors.black87),
//                     ),
//                     SizedBox(height: 2),

//                     // company name text
//                     Text(
//                       "Alpha Desings Pvt Ltd",
//                       style: AppFonts.Medium18(Colors.black),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 // track order
//                 Container(
//                   padding: EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Color(0xFFEFF4F9),
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//                   child: HeroIcon(
//                     HeroIcons.shoppingCart,
//                     style: HeroIconStyle.mini,
//                     size: 20,
//                   ),
//                 ),

//                 SizedBox(width: 12),

//                 // notification
//                 Container(
//                   padding: EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Color(0xFFEFF4F9),
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//                   child: HeroIcon(
//                     HeroIcons.bellAlert,
//                     style: HeroIconStyle.mini,
//                     size: 20,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );