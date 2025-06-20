import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class MyButtonOne extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final TextStyle? style;

  const MyButtonOne({
    super.key,
    required this.onTap,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: AppFonts.Medium14(Colors.white),
        ),
      ),
    );
  }
}
