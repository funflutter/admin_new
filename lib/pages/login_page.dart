import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // define at class level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Admin Login",
                  style: AppFonts.regular32(Colors.black),
                ),
                const SizedBox(height: 24),

                // email text field
                LoginTextfields(
                  hintText: "Enter Email",
                  labelText: "Enter Email",
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    }
                    if (!value.trim().endsWith('@gmail.com')) {
                      return 'Email must end with @gmail.com';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // pass text field
                LoginTextfields(
                  hintText: "Enter Password",
                  labelText: "Enter Password",
                  controller: passwordController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
