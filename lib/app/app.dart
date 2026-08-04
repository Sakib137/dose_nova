import 'package:flutter/material.dart';
import 'package:dose_nova/app/theme/app_theme.dart';
import 'router/app_router.dart';

class DoseNovaApp extends StatelessWidget {
  const DoseNovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,

      routerConfig: appRouter,
    );
  }
}
