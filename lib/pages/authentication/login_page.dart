import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/components/custom_button.dart';
import 'package:admin_ecom/pages/authentication/register_company.dart';
import 'package:admin_ecom/pages/authentication/signup_page.dart';
import 'package:admin_ecom/responsive.dart';
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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xffF9FBFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height / 4),
                // Message
                Text(
                  "Admin Login",
                  style: AppFonts.regular32(Colors.black),
                ),

                const SizedBox(height: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // email text field
                    LoginTextfields(
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
                      isPassword: true,
                      labelText: "Enter Password",
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password cannot be empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),

                    GestureDetector(
                      child: Text(
                        "Forgot Password?",
                        style: AppFonts.Medium14(
                          const Color.fromARGB(255, 6, 124, 220),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // sign in button
                CustomButton(
                  height: 60,
                  color: Colors.black,
                  textColor: Colors.white,
                  text: "Sign In",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterCompany(),
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
                  text: "Sign Up",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
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
