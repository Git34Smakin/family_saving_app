import 'package:flutter/material.dart';
import 'package:family_saving_app/widgets/custom_input.dart';
import 'package:family_saving_app/widgets/custom_button.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Enter OTP Code')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomInput(
              hintText: 'Enter OTP',
              controller: controller,
              keyboardType: TextInputType.number,
              obscureText: false,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Verify',
              onPressed:
                  () => Navigator.pushReplacementNamed(context, '/dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
