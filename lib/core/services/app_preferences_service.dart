import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_preferences.dart';

final class AppPreferencesService {
  const AppPreferencesService._();

  static Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(AppPreferences.hasCompletedOnboarding, true);
  }

  static Future<bool> hasCompletedOnboarding() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(AppPreferences.hasCompletedOnboarding) ?? false;
  }
}
