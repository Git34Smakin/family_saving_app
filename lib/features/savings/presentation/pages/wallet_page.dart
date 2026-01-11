import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Family Wallet")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Family Savings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "UGX 2,550,000",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text("Scheduled Withdrawals"),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: 320000 / 400000,
              color: AppColors.primary,
            ),
            SizedBox(height: 8),
            Text("School Fees UGX 550,000"),
          ],
        ),
      ),
    );
  }
}
