import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/components/custom_button.dart';
import 'package:admin_ecom/pages/authentication/login_page.dart';
import 'package:admin_ecom/constant.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xffF9FBFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height / 4),
                // Message
                Text(
                  "Admin SignUp",
                  style: AppFonts.regular32(Colors.black),
                ),
                const SizedBox(height: 24),

                // enter email text field
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

                SizedBox(height: 16),

                // enter password
                LoginTextfields(
                  isPassword: true,
                  hintText: "Enter Password",
                  labelText: "Enter Password",
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 16),

                // re-enter password
                LoginTextfields(
                  isPassword: true,
                  hintText: "Re-Enter Password",
                  labelText: "Re-Enter Password",
                  controller: rePasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 24),

                // sign in button
                CustomButton(
                  height: 60,
                  color: Colors.black,
                  textColor: Colors.white,
                  text: "Sign Up",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // divider
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "OR",
                        style: AppFonts.Medium14(
                          Colors.black87,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // sign up button
                CustomButton(
                  height: 60,
                  color: Colors.white,
                  textColor: Colors.black,
                  border: Border.all(color: Colors.black),
                  text: "Sign In",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
