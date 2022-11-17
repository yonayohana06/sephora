import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.amount,
    required this.icon,
    required this.image,
    required this.time,
    required this.transaction,
    required this.trxType,
    required this.type,
  });

  final String transaction;
  final String time;
  final String trxType;
  final String amount;
  final IconData icon;
  final String image;
  final TransactionType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            blurStyle: BlurStyle.normal,
            color: const Color(0xFFBCC8E7).withOpacity(0.25),
            offset: const Offset(0, 0),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                transaction,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                icon,
                size: 16,
                color:
                    (type == TransactionType.masuk) ? Colors.green : Colors.red,
              ),
              Expanded(
                child: Text(
                  time,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    color: Color(0xFF97A5C9),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF3F7FD),
                ),
                child: Image.asset(
                  image,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trxType,
                    style: const TextStyle(
                      color: Color(0xFF97A5C9),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                      color: Color(0xFF2B2F3C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum TransactionType { masuk, keluar }
