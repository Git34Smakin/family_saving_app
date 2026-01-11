import 'package:flutter/material.dart';
import 'package:family_saving_app/theme/app_colors.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('Welcome, The Johnson Family!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.primary,
                    ),
                    icon: const Icon(Icons.home_outlined),
                    label: const Text('Create Family'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.group_add),
                    label: const Text('Join Family'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondary,
              ),
              onPressed: () {},
              child: const Text('Create New Family'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Recent Activity',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: const [
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.add)),
                      title: Text('Jotar Poise'),
                      subtitle: Text('John’s Contribution'),
                      trailing: Text('200, AM'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.remove)),
                      title: Text('Family Withdrawal'),
                      subtitle: Text('Family Withdrawal'),
                      trailing: Text('223 PM'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
