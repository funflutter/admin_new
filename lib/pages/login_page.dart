import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Admin Login",
                style: AppFonts.Regular24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
