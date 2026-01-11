import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/save_now_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/events_screen.dart';
import 'screens/register_screen.dart';
import 'screens/notifications_screen.dart';
import '../widgets/custom_button.dart';

void main() {
  runApp(const FamilySavingApp());
}

class FamilySavingApp extends StatelessWidget {
  const FamilySavingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Family Saving App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (ctx) => const OnboardingScreen(),
        '/signup': (ctx) => const SignUpScreen(),
        '/home': (ctx) => const HomeScreen(),
        '/save_now': (ctx) => const SaveNowScreen(),
        '/wallet': (ctx) => const WalletScreen(),
        '/events': (ctx) => const EventsScreen(),
        '/event_details': (ctx) => const EventDetailsScreen(),
        '/register': (ctx) => const RegisterScreen(),
        '/notifications': (ctx) => const NotificationsScreen(),
      },
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Onboarding Screen")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              "Welcome to Family Saving App",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("Save and share with your family!"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/signup'),
              child: const Text('Get started'),
            ),
          ],
        ),
      ),
    );
  }
}

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
            // remove const because value is computed
            CircularProgressIndicator(value: 320000 / 400000, strokeWidth: 8),
            const SizedBox(height: 30),
            // navigate to the register screen (passes optional args)
            CustomButton(
              text: "Register",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/register',
                  arguments: {'eventId': 'grace_bday'},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
