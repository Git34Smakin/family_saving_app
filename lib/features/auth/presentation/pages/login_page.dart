import 'package:family_saving_app/widgets/custom_button.dart';
import 'package:family_saving_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              controller: phoneController,
              hint: "Enter phone number",
            ),
            const SizedBox(height: 20),
            CustomButton(text: "Continue", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
