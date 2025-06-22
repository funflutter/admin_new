import 'package:admin_ecom/components/dropdown_field.dart';
import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/components/my_button_1.dart';
import 'package:admin_ecom/pages/register_company.dart';
import 'package:admin_ecom/responsive.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCreate extends StatelessWidget {
  const ProductCreate({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        height: 80,
        padding: EdgeInsets.all(10),
        child: MyButtonOne(
          // height: 50,
          color: Colors.black,
          textColor: Colors.white,
          text: "Sign In",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterCompany(),
              ),
            );
          },
        ),
      ),
      backgroundColor: Color(0xffF6F8FC),
      body: SafeArea(
        child: Form(
          // key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // message
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add Product",
                      style: AppFonts.Medium24(Colors.black),
                    ),
                    MyButtonOne(
                      onTap: () {},
                      text: 'Skip',
                      height: 36,
                      width: 70,
                      color: Colors.black,
                      textColor: Colors.white,
                      style: AppFonts.Medium18(Colors.black),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 16,
                      children: [
                        // company name
                        LoginTextfields(
                          prefixIcon: Icon(Icons.add),
                          // hintText: "Enter Company Name",
                          hintText: "Add Product Images",
                          // controller: companyNameController,
                        ),

                        // SizedBox(height: 16),

                        // company name
                        LoginTextfields(
                          //  hintText: "Enter Email Id",
                          labelText: "Product Name",
                          // controller: companyEmailController,
                        ),

                        MyDropdownField(
                          hintText: 'Select Product Category',
                        ),
                        LoginTextfields(
                          //  hintText: "Enter Email Id",
                          labelText: "Enter Stock Quantity",
                          // controller: companyEmailController,
                        ),
                        LoginTextfields(
                          //  hintText: "Enter Email Id",
                          labelText: "MRP (₹)",
                          // controller: companyEmailController,
                        ),
                        LoginTextfields(
                          //  hintText: "Enter Email Id",
                          labelText: "Selling Price (₹)",
                          // controller: companyEmailController,
                        ),
                        LoginTextfields(
                          //  hintText: "Enter Email Id",
                          labelText: "Discount (%) (optional)",
                          // controller: companyEmailController,
                        ),

                        AbsorbPointer(
                          child: LoginTextfields(
                            prefixIcon: SizedBox(
                              height: 28,
                              width: 28,
                              child: Center(
                                child:
                                    SvgPicture.asset('assets/svg/calender.svg'),
                              ),
                            ),
                            //  hintText: "Enter Email Id",
                            labelText: "Choose Offer Validity",
                            // controller: companyEmailController,
                          ),
                        ),
                        LoginTextfields(
                          conatinerExpand: true,
                          labelText: "Product Return Policy",
                        ),
                        LoginTextfields(
                          conatinerExpand: true,
                          labelText: "Product Short Description",
                        ),
                        LoginTextfields(
                          conatinerExpand: true,
                          labelText: "Product Detail Description",
                        ),
                        LoginTextfields(
                          labelText: "Delivery Charges (₹)",
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
