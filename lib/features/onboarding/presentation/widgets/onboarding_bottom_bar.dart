import 'package:flutter/material.dart';

class OnboardingBottomBar extends StatelessWidget {
  const OnboardingBottomBar({
    super.key,
    required this.isLastPage,
    required this.onNext,
    required this.onSkip,
    required this.onGetStarted,
  });

  final bool isLastPage;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final VoidCallback onGetStarted;

  @override
  Widget build(BuildContext context) {
    if (isLastPage) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
        child: SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: onGetStarted,
            child: const Text('Get Started'),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
      child: Row(
        children: [
          TextButton(onPressed: onSkip, child: const Text('Skip')),
          const Spacer(),
          FilledButton(onPressed: onNext, child: const Text('Next')),
        ],
      ),
    );
  }
}
