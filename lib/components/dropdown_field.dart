import 'package:admin_ecom/theme/global_font.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDropdownField extends StatelessWidget {
  final String? hintText;
  const MyDropdownField({
    super.key,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100, // Light shadow
              blurRadius: 16,
              offset: Offset(0, 0), // Drop slightly down
            ),
          ],
        ),
        offset: const Offset(0, -4),
      ),
      isExpanded: true,
      decoration: InputDecoration(
        hintText: hintText,
        iconColor: Colors.transparent,
        fillColor: Color(0xffFFFFFF),
        hintTextDirection: TextDirection.ltr,
        filled: true,
        hintStyle: AppFonts.Medium16(Colors.black54),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 18,
        ),
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      iconStyleData: IconStyleData(
        icon: SizedBox(
          height: 24,
          width: 24,
          child: Center(
            child: SvgPicture.asset(
              'assets/svg/arrow_down.svg',
            ),
          ),
        ),
      ),
      items: [
        DropdownMenuItem(child: Text('123456'), value: 1),
        DropdownMenuItem(child: Text('123456'), value: 2),
        DropdownMenuItem(child: Text('123456'), value: 3),
        DropdownMenuItem(child: Text('123456'), value: 4),
      ],
      onChanged: (value) {},
    );
  }
}
