import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class MyButtonTwo extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final TextStyle? style;

  const MyButtonTwo({
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
          border: Border.all(
            color: Colors.black45,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: AppFonts.Medium14(
            Colors.black,
          ),
        ),
      ),
    );
  }
}
