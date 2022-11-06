import 'package:flutter/material.dart';
import '../widgets/language_switcher.dart';
import '../widgets/onboarding_carousel.dart';
import '../widgets/onboarding_description.dart';
import '../widgets/onboarding_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "BANK SEPHORA",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF2F82FF),
                      ),
                    ),
                    LanguageSwitcher(
                      isID: (isId) {
                        (isId ? 'Bahasa' : 'English');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 58,
              ),
              OnBoardingCarousel(
                onChanged: (currentPage) {
                  setState(() {
                    _currentPage = currentPage;
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OnBoardingIndicator(
                currentPage: _currentPage,
              ),
              const SizedBox(
                height: 30,
              ),
              OnBoardingDescription(currentPage: _currentPage),
              const SizedBox(
                height: 61,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Buat Akun Sekarang'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/onboarding/chat.png',
                    width: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Butuh Bantuan?',
                      style: TextStyle(
                        color: Color(0xFF2F82FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
