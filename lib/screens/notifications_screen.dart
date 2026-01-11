import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      "Reminder to save today",
      "Grace’s Birthday is on April 27",
      "School Fees are due on May 16",
      "Upcoming event reminder",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder:
            (context, index) => Card(
              child: ListTile(
                leading: const Icon(Icons.notifications_active),
                title: Text(notifications[index]),
                subtitle: Text("${index + 1}h ago"),
              ),
            ),
      ),
    );
  }
}
