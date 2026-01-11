import 'package:family_saving_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(value: "member", child: Text("Member")),
                DropdownMenuItem(value: "admin", child: Text("Admin")),
              ],
              onChanged: (_) {},
              decoration: const InputDecoration(labelText: "Select your role"),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(
                  value: "family1",
                  child: Text("Ssemakula Family"),
                ),
                DropdownMenuItem(
                  value: "family2",
                  child: Text("Mukono Family"),
                ),
              ],
              onChanged: (_) {},
              decoration: const InputDecoration(labelText: "Select family"),
            ),
            const SizedBox(height: 30),
            CustomButton(text: "Register", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
