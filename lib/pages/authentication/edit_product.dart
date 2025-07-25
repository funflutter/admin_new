import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/components/dropdown_field.dart';
import 'package:admin_ecom/components/login_textfields.dart';
import 'package:admin_ecom/components/custom_button.dart';
import 'package:admin_ecom/constant.dart';
import 'package:flutter/material.dart';

class EditProduct extends StatelessWidget {
  const EditProduct({super.key});

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
            text: "Save",
            onTap: () => Navigator.pop(context),
          ),
        ),
      ),
      backgroundColor: Color(0xffF6F8FC),
      body: SafeArea(
        child: Form(
          // key: _formKey,
          child: Column(
            children: [
              CustomAppBar(
                onTap: () => Navigator.pop(context),
                secondText: "Edit product",
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 4),
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(
                            spacing: 16,
                            children: [
                              // company name
                              AbsorbPointer(
                                child: LoginTextfields(
                                  prefixIcon: Icon(Icons.add),
                                  hintText: "Edit/Add More Product Images",
                                ),
                              ),

                              // company name
                              LoginTextfields(
                                labelText: "Bracelet (Gold)",
                              ),

                              // product category
                              MyDropdownField(
                                hintText: 'Bracelets',
                              ),

                              // stock quantity
                              LoginTextfields(
                                labelText: "40",
                              ),

                              // stock quantity
                              LoginTextfields(
                                labelText: "Add Stock Quantity",
                              ),

                              // MRP
                              LoginTextfields(
                                labelText: "₹1200.00",
                              ),

                              // selling price
                              LoginTextfields(
                                labelText: "₹899.00",
                              ),

                              // discount price
                              LoginTextfields(
                                labelText: "8%",
                              ),

                              // // choose offer validity (select date, time)
                              // AbsorbPointer(
                              //   child: LoginTextfields(
                              //     prefixIcon: SizedBox(
                              //       height: 28,
                              //       width: 28,
                              //       child: Center(
                              //         child: SvgPicture.asset(
                              //           'assets/svg/calender.svg',
                              //         ),
                              //       ),
                              //     ),
                              //     hintText: "Choose Offer Validity",
                              //   ),
                              // ),

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
                                labelText: "₹50.00",
                              ),

                              SizedBox(height: 100),
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
