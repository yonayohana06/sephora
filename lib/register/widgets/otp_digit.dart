import 'package:flutter/material.dart';

class OtpDigit extends StatefulWidget {
  const OtpDigit({super.key});

  @override
  State<OtpDigit> createState() => _OtpDigitState();
}

class _OtpDigitState extends State<OtpDigit> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        OtpDigitItem(
          active: true,
        ),
        OtpDigitItem(
          active: true,
        ),
        OtpDigitItem(),
        OtpDigitItem(),
        OtpDigitItem(),
        OtpDigitItem(),
      ],
    );
  }
}

class OtpDigitItem extends StatelessWidget {
  const OtpDigitItem({super.key, this.active = false});

  final bool active;

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Container(
        margin: const EdgeInsets.only(top: 33, left: 16, right: 16),
        height: 16,
        width: 16,
        decoration: BoxDecoration(
          color: const Color(0xFF2F82FF),
          shape: BoxShape.circle,
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0xFF2F82FF),
          //     blurRadius: 10,
          //     spreadRadius: 0,
          //   )
          // ],
          border: Border.all(
            color: const Color(0xFFDAE9FF),
            width: 2,
          ),
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.only(top: 33, left: 16, right: 16),
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF97A5C9),
          width: 1,
        ),
      ),
    );
  }
}
