import 'package:admin_ecom/components/custom_app_bar.dart';
import 'package:admin_ecom/components/login_textfields.dart';
import 'package:flutter/material.dart';

class MonthlyBudgetTracker extends StatefulWidget {
  const MonthlyBudgetTracker({super.key});

  @override
  State<MonthlyBudgetTracker> createState() => _MonthlyBudgetTrackerState();
}

class _MonthlyBudgetTrackerState extends State<MonthlyBudgetTracker> {
  final monthlyAmountController = TextEditingController();
  final yearlyAmountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              onTap: () => Navigator.pop(context),
              secondText: "Monthly Budget Tracker",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // monthly target amount
                    LoginTextfields(
                      labelText: "Enter Monthly Target Amount (₹)",
                      controller: monthlyAmountController,
                    ),

                    SizedBox(height: 16),

                    // yearly target amount
                    LoginTextfields(
                      labelText: "Enter Yearly Target Amount (₹)",
                      controller: yearlyAmountController,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
