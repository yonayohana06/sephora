import 'package:flutter/material.dart';

class OnBoardingDescription extends StatelessWidget {
  const OnBoardingDescription({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingDescItem(
          index: currentPage,
        ),
      ],
    );
  }
}

class OnBoardingDescItem extends StatelessWidget {
  const OnBoardingDescItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Column(
        children: const [
          Text(
            'Kemudahan dalam Genggaman',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF464455),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Hanya dengan 3 langkah registrasi, '
              'nikmati segala kemudahan dalam bertransaksi',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF727FA3),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    } else if (index == 1) {
      return Column(
        children: const [
          Text(
            'Transaksi Internasional',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF464455),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Nikmati kemudahan bertransaksi di seluruh dunia '
              'dengan kartu VISA dan Mastercard',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF727FA3),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }
    return Column(
      children: const [
        Text(
          'Keamanan Dalam Bertransaksi',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFF464455),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Kemanan dalam bertransaksi Anda merupakan\n'
            'prioritas bagi kami',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF727FA3),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
