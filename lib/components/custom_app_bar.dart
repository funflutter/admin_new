import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: AppFonts.Medium14(Colors.black54),
                    ),

                    // company name text
                    Text(
                      "Alpha Desings Pvt Ltd",
                      style: AppFonts.Medium20(Colors.black),
                    ),
                  ],
                ),
                // Icon(icon)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _icons(String icon) {
  return Container(
    height: 32,
    width: 32,
    decoration: BoxDecoration(
      color: Color(0xffEFF4F9),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Center(
      child: SvgPicture.asset(icon),
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