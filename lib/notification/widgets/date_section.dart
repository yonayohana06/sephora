import 'package:flutter/material.dart';

class DateSection extends StatelessWidget {
  const DateSection({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        date,
        style: const TextStyle(
          color: Color(0xFF727FA3),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
