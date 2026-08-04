import 'package:flutter/material.dart';

import 'widgets/dashboard_header.dart';
import 'widgets/empty_dashboard.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text('Add Medicine'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: const [
            DashboardHeader(),
            SizedBox(height: 32),
            EmptyDashboard(),
          ],
        ),
      ),
    );
  }
}
