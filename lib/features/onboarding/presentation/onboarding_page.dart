import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import 'model/onboarding_item.dart';
import 'widgets/onboarding_card.dart';
import 'widgets/onboarding_indicator.dart';
import 'widgets/onboarding_bottom_bar.dart';
import 'package:go_router/go_router.dart';

import '../../../core/services/app_preferences_service.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  late final List<OnboardingItem> _items = [
    const OnboardingItem(
      title: 'Never Miss a Dose',
      description:
          'Powerful reminders with persistent alarms help you take your medicines on time.',
      image: AppAssets.onboardingMedicine,
    ),
    const OnboardingItem(
      title: 'Track Every Dose',
      description:
          'View your medication history and build healthy habits every day.',
      image: AppAssets.onboardingTracking,
    ),
    const OnboardingItem(
      title: 'Works Even Offline',
      description:
          'DoseNova keeps reminding you even without internet and syncs when you reconnect.',
      image: AppAssets.onboardingOffline,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _items.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  final item = _items[index];

                  return OnboardingCard(
                    title: item.title,
                    description: item.description,
                    image: item.image,
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: OnboardingIndicator(
                currentPage: _currentPage,
                pageCount: _items.length,
              ),
            ),

            OnboardingBottomBar(
              isLastPage: _currentPage == _items.length - 1,
              onSkip: () {
                _pageController.animateToPage(
                  _items.length - 1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              onNext: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              onGetStarted: () async {
                await AppPreferencesService.completeOnboarding();

                if (!context.mounted) return;

                context.go('/dashboard');
              },
            ),
          ],
        ),
      ),
    );
  }
}
