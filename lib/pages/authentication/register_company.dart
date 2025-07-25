import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/components/dropdown_field.dart';
import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/components/custom_button.dart';
import 'package:admin_ecom/pages/authentication/product_create.dart';
import 'package:admin_ecom/constant.dart';
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
          child: CustomButton(
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
          child: Column(
            children: [
              // title
              CustomAppBar(
                secondText: "Register Your Company",
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // company name
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 4),
                              LoginTextfields(
                                labelText: "Enter Company Name",
                                controller: companyNameController,
                              ),

                              SizedBox(height: 16),

                              // company name
                              LoginTextfields(
                                labelText: "Enter Email Id",
                                controller: companyEmailController,
                              ),

                              SizedBox(height: 16),

                              // company name
                              LoginTextfields(
                                labelText: "Enter Phone No",
                                controller: companyPhoneController,
                              ),

                              SizedBox(height: 16),

                              // Company type
                              MyDropdownField(
                                hintText: 'Select Company Type',
                              ),

                              SizedBox(height: 16),

                              // select place
                              MyDropdownField(
                                hintText: 'Select Place',
                              ),

                              SizedBox(height: 16),

                              // select state
                              MyDropdownField(
                                hintText: 'Select State',
                              ),

                              SizedBox(height: 16),

                              // select country
                              MyDropdownField(
                                hintText: 'Select Country',
                              ),

                              SizedBox(height: 16),

                              // enter company address
                              LoginTextfields(
                                labelText: "Address",
                                conatinerExpand: true,
                              ),

                              SizedBox(height: 16),

                              // pincode
                              LoginTextfields(
                                labelText: "Pincode",
                                controller: companyPhoneController,
                              ),

                              SizedBox(height: 80),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
