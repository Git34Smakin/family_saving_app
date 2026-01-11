import 'package:family_saving_app/core/theme/app_theme.dart';
import 'package:family_saving_app/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

class FamilySavingApp extends StatelessWidget {
  const FamilySavingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family Saving App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const LoginPage(),
    );
  }
}
