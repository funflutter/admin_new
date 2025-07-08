import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}
