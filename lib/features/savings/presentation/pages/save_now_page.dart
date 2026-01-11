import 'package:flutter/material.dart';
import 'package:family_saving_app/widgets/custom_button.dart';
import 'package:family_saving_app/widgets/custom_input.dart';

class SaveNowScreen extends StatelessWidget {
  const SaveNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Save Now")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            CustomInput(
              hintText: "Amount",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(
                  value: "wallet1",
                  child: Text("Family Wallet"),
                ),
                DropdownMenuItem(
                  value: "wallet2",
                  child: Text("Savings Account"),
                ),
              ],
              onChanged: (_) {},
              decoration: InputDecoration(
                hintText: "Select Account",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(text: "Save", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
