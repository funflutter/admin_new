import 'package:flutter/material.dart';

class MyDropdownField extends StatelessWidget {
  const MyDropdownField({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text('Select Company Type'),
      decoration: InputDecoration(
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
