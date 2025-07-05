import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final TextStyle? style;
  final Color? color;
  final Color? textColor;
  final BoxBorder? border;
  final double? height;
  final double? width;
  final Widget? icon;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.style,
    this.color,
    this.textColor,
    this.border,
    this.height,
    this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: border,
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            // icon != null ? icon : SizedBox(),
            Center(
              child: Text(
                text,
                style: AppFonts.Medium14(textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
