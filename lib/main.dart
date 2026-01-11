import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:family_saving_app/core/theme/app_theme.dart';
import 'package:family_saving_app/features/auth/presentation/pages/splash_page.dart';
import 'package:family_saving_app/features/auth/presentation/pages/login_page.dart';
import 'package:family_saving_app/features/auth/presentation/pages/otp_verification_page.dart';
import 'package:family_saving_app/widgets/bottom_nav_shell.dart';

export 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: FamilySavingAppWrapper()));
}

class FamilySavingAppWrapper extends StatelessWidget {
  const FamilySavingAppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family Saving App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/otp': (context) => const OtpVerificationPage(),
        '/dashboard': (context) => const BottomNavShell(),
      },
    );
  }
}
