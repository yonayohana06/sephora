import 'package:flutter/material.dart';
import 'package:sephora/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BANK SEPHORA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
