import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class MyButtonOne extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final TextStyle? style;
  final Color? color;
  final Color? textColor;
  final BoxBorder? border;
  final double? height;
  final double? width;

  const MyButtonOne({
    super.key,
    required this.onTap,
    required this.text,
    this.style,
    this.color,
    this.textColor,
    this.border,
    this.height,
    this.width,
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
        child: Center(
          child: Text(
            text,
            style: AppFonts.Medium14(textColor),
          ),
        ),
      ),
    );
  }
}
