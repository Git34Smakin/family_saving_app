import 'package:flutter/material.dart';
import 'package:family_saving_app/widgets/custom_button.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Event Details")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              "Grace’s Birthday",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("Target Amount: UGX 220,000"),
            const Text("Saved: UGX 320,000"),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              value: 320000 / 400000,
              strokeWidth: 8,
            ),
            const SizedBox(height: 30),
            CustomButton(text: "Register", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
