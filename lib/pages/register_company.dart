import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/responsive.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class RegisterCompany extends StatefulWidget {
  const RegisterCompany({super.key});

  @override
  State<RegisterCompany> createState() => _RegisterCompanyState();
}

class _RegisterCompanyState extends State<RegisterCompany> {
  // field controllers
  final companyNameController = TextEditingController();
  final companyEmailController = TextEditingController();
  final companyPhoneController = TextEditingController();
  // form controller
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // message
                Text(
                  "Register Your Company",
                  style: AppFonts.Regular28(Colors.black),
                ),

                SizedBox(height: 24),

                // company name
                LoginTextfields(
                  hintText: "Enter Company Name",
                  labelText: "Enter Company Name",
                  controller: companyNameController,
                ),

                SizedBox(height: 16),

                // company name
                LoginTextfields(
                  hintText: "Enter Email Id",
                  labelText: "Enter Email Id",
                  controller: companyEmailController,
                ),

                SizedBox(height: 16),

                // company name
                LoginTextfields(
                  hintText: "Enter Phone No",
                  labelText: "Enter Phone No",
                  controller: companyPhoneController,
                ),
                SizedBox(height: 20),
                DropdownButtonFormField(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
