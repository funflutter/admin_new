import 'package:admin_ecom/components/dropdown_field.dart';
import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/components/custom_button.dart';
import 'package:admin_ecom/pages/bottom_nav_control.dart';
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
            text: "Add Product",
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavControl(),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffF6F8FC),
      body: SafeArea(
        child: Form(
          // key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // message
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add Product",
                      style: AppFonts.Medium24(Colors.black),
                    ),
                    CustomButton(
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

                SizedBox(height: 16),

                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 16,
                      children: [
                        // company name
                        AbsorbPointer(
                          child: LoginTextfields(
                            prefixIcon: Icon(Icons.add),
                            hintText: "Add Product Images",
                          ),
                        ),

                        // company name
                        LoginTextfields(
                          labelText: "Product Name",
                        ),

                        // product category
                        MyDropdownField(
                          hintText: 'Select Product Category',
                        ),

                        // stock quantity
                        LoginTextfields(
                          labelText: "Enter Stock Quantity",
                        ),

                        // MRP
                        LoginTextfields(
                          labelText: "MRP (₹)",
                        ),

                        // selling price
                        LoginTextfields(
                          labelText: "Selling Price (₹)",
                        ),

                        // discount price
                        LoginTextfields(
                          labelText: "Discount (%) (optional)",
                        ),

                        // choose offer validity (select date, time)
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
                            hintText: "Choose Offer Validity",
                          ),
                        ),

                        // return policy
                        LoginTextfields(
                          conatinerExpand: true,
                          labelText: "Product Return Policy",
                        ),

                        // short description
                        LoginTextfields(
                          conatinerExpand: true,
                          labelText: "Product Short Description",
                        ),

                        // detail description
                        LoginTextfields(
                          conatinerExpand: true,
                          labelText: "Product Detail Description",
                        ),

                        // delivery charge price
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
