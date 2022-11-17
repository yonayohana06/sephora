import 'package:flutter/material.dart';

class SplitBill extends StatelessWidget {
  const SplitBill({
    super.key,
    required this.time,
    required this.circleAva,
    required this.amount,
  });

  final String time;
  final Widget circleAva;
  final String amount;

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
              const Text(
                'Tagihan Split Bill',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
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
              Expanded(child: circleAva),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Nominal Tagihan',
                    style: TextStyle(
                      color: Color(0xFF97A5C9),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                      color: Color(0xFF2B2F3C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
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
