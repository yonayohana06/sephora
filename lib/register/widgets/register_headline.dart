import 'package:flutter/material.dart';

class RegisterHeadline extends StatelessWidget {
  const RegisterHeadline(
      {super.key,
      required this.headline,
      required this.desc,
      this.icon,
      this.image});

  final String headline;
  final String desc;
  final IconData? icon;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFDAE9FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Builder(
                builder: (context) {
                  if (image != null) {
                    return image!;
                  }
                  return Icon(
                    icon,
                    color: Colors.blue,
                    size: 20,
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    headline,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2B2F3C),
                    ),
                  ),
                  Text(
                    desc,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF727FA3),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
