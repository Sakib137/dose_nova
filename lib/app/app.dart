import 'package:flutter/material.dart';
import 'package:dose_nova/app/theme/app_theme.dart';

class DoseNovaApp extends StatelessWidget {
  const DoseNovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoseNova',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,

      home: const Scaffold(body: Center(child: Text('DoseNova'))),
    );
  }
}
