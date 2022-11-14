import 'package:flutter/material.dart';

class OtpDigit extends StatefulWidget {
  const OtpDigit({
    super.key,
    required this.otpValue,
    this.optLength = 6,
  });

  final String otpValue;
  final int optLength;

  @override
  State<OtpDigit> createState() => _OtpDigitState();
}

class _OtpDigitState extends State<OtpDigit> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.optLength, (index) => index + 1).map((e) {
        return OtpDigitItem(active: e <= widget.otpValue.length);
      }).toList(),
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
