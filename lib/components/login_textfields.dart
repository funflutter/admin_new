import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class LoginTextfields extends StatefulWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String? labelText;
  final bool isPassword;

  const LoginTextfields({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
    this.labelText,
    this.isPassword = false,
  });

  @override
  State<LoginTextfields> createState() => _LoginTextfieldsState();
}

class _LoginTextfieldsState extends State<LoginTextfields> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText =
        widget.isPassword; // 🔒 Hide text only if it's a password field
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword ? _obscureText : false,
      style: AppFonts.Medium16(Colors.black),
      decoration: InputDecoration(
        hintStyle: AppFonts.Medium16(Colors.black38),
        labelText: widget.labelText,
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
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey.shade600,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
