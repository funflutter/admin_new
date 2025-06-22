import 'package:admin_ecom/components/dropdown_field.dart';
import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/components/my_button_1.dart';
import 'package:admin_ecom/pages/product_create.dart';
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
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Background color
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100, // Light shadow
              offset: Offset(0, -2), // Shadow from top
              blurRadius: 18,
            ),
          ],
        ),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: SafeArea(
          child: MyButtonOne(
            height: 60,
            color: Colors.black,
            textColor: Colors.white,
            text: "Register",
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductCreate(),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffF6F8FC),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // message
                Text(
                  "Register Your Company",
                  style: AppFonts.Medium24(Colors.black),
                ),

                SizedBox(height: 16),

                // company name
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 16,
                      children: [
                        LoginTextfields(
                          labelText: "Enter Company Name",
                          controller: companyNameController,
                        ), // company name
                        LoginTextfields(
                          labelText: "Enter Email Id",
                          controller: companyEmailController,
                        ),

                        // company name
                        LoginTextfields(
                          labelText: "Enter Phone No",
                          controller: companyPhoneController,
                        ),

                        // SizedBox(height: 20),

                        // Company type
                        MyDropdownField(
                          hintText: 'Select Company Type',
                        ),

                        // select place
                        MyDropdownField(
                          hintText: 'Select Place',
                        ),

                        // select state
                        MyDropdownField(
                          hintText: 'Select State',
                        ),

                        // select country
                        MyDropdownField(
                          hintText: 'Select Country',
                        ),

                        // enter company address
                        LoginTextfields(
                          labelText: "Address",
                          conatinerExpand: true,
                        ),

                        // pincode
                        LoginTextfields(
                          labelText: "Pincode",
                          controller: companyPhoneController,
                        ),

                        SizedBox(height: 60),
                      ],
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
