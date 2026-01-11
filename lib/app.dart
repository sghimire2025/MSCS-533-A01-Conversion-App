import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/measures/presentation/screens/measures_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Measures Converter',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MeasuresScreen(),
    );
  }
}
