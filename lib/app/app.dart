import 'package:flutter/material.dart';

class DoseNovaApp extends StatelessWidget {
  const DoseNovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('DoseNova'))),
    );
  }
}
