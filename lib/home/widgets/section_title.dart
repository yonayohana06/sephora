import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.onSeeAll,
  });

  final String title;
  final Function? onSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Builder(builder: (context) {
          if (onSeeAll == null) {
            return const SizedBox();
          }
          return TextButton(
            onPressed: () {},
            child: const Text(
              'Lihat Semua',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        }),
      ],
    );
  }
}
