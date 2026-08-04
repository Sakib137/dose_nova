import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  String _greeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) return 'Good Morning';
    if (hour < 17) return 'Good Afternoon';
    return 'Good Evening';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_greeting(), style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text(
          DateFormat('EEEE, d MMMM').format(DateTime.now()),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
