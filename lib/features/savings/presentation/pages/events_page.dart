import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'event_details_screen.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final events = [
      {
        "title": "Grace’s Birthday",
        "date": "Apr 27",
        "amount": 20000,
        "progress": 1.0,
      },
      {
        "title": "School Fees",
        "date": "Mar 8",
        "amount": 24926,
        "progress": 0.7,
      },
      {
        "title": "Christmas Celebration",
        "date": "Dec 25",
        "amount": 400800,
        "progress": 0.4,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Upcoming Events")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(event["title"] as String),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Due: ${event["date"]}"),
                  const SizedBox(height: 5),
                  LinearProgressIndicator(
                    value: event["progress"] as double,
                    color: AppColors.primary,
                    backgroundColor: Colors.grey[300],
                  ),
                ],
              ),
              trailing: Text("UGX ${event["amount"]}"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const EventDetailsScreen()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
