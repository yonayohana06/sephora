import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecentHistoryItem extends StatelessWidget {
  const RecentHistoryItem({
    Key? key,
    required this.imageProvider,
    required this.title,
    required this.description,
    required this.amount,
    required this.type,
  }) : super(key: key);

  final ImageProvider imageProvider;
  final String title;
  final String description;
  final int amount;
  final TransactionType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          Image(
            image: imageProvider,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Builder(
            builder: (context) {
              late Color textColor;
              final _numberFormat = NumberFormat('#,###', 'id_ID');

              if (type == TransactionType.keluar) {
                textColor = Colors.red;
              } else {
                textColor = Colors.green;
              }
              return Text(
                'Rp${_numberFormat.format(amount)}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

enum TransactionType {
  masuk,
  keluar,
}
