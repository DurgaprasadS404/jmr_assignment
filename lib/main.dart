import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Metropolis',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Metropolis'),
          bodyMedium: TextStyle(fontFamily: 'Metropolis'),
          displayLarge:
              TextStyle(fontFamily: 'Metropolis', fontWeight: FontWeight.bold),
          displayMedium:
              TextStyle(fontFamily: 'Metropolis', fontWeight: FontWeight.bold),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
