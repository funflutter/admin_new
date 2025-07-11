import 'package:admin_ecom/pages/authentication/login_page.dart';
import 'package:admin_ecom/pages/orders/order_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderView(),
    );
  }
}
