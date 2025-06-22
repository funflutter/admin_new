import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class MyDropdownField extends StatelessWidget {
  final String? labelText;
  const MyDropdownField({
    super.key,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text('Select Company Type'),
      decoration: InputDecoration(
        hintStyle: AppFonts.Medium16(Colors.black38),
        labelText: labelText,
        labelStyle: AppFonts.Medium16(Colors.black54),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade700,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
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
