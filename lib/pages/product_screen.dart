import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/responsive.dart';
import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> filterList = [
    'All',
    'Earings',
    'Bangles',
    'Chains',
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Builder(builder: (context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF9FBFE),
          body: Column(
            children: [
              CustomAppBar(
                secondText: 'My Products',
                buttonText: 'Add Products',
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: SizedBox(
                          height: 20,
                          width: 20,
                          child: Center(
                            child: Image.asset(
                              'assets/png/search.png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        hintText: 'Search...',
                        hintStyle: AppFonts.Medium14(Color(0xff666666)),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(100.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(100.0)),
                      ),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        itemCount: filterList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16)),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
