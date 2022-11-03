import 'package:flutter/material.dart';

class OnBoardingCarousel extends StatelessWidget {
  const OnBoardingCarousel({super.key, required this.onChanged});

  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: PageView(
        onPageChanged: (currentPage) {
          onChanged(currentPage);
        },
        children: [
          Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding/img_1.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding/img_2.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding/img_3.png'),
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
