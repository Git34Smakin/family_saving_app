import 'package:flutter/material.dart';
import 'package:family_saving_app/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text("Howdy Julius!"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Family Saving App 🎉",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
