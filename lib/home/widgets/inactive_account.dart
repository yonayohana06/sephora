import 'package:flutter/material.dart';

class InactiveAccount extends StatelessWidget {
  const InactiveAccount({super.key, required this.type});

  final StatusType type;

  @override
  Widget build(BuildContext context) {
    if (type == StatusType.nonaktif) {
      return Container(
        margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              blurStyle: BlurStyle.normal,
              color: const Color(0xFFBCC8E7).withOpacity(0.25),
              offset: const Offset(0, 2),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Akun Anda Belum Diaktivasi',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Aktivasi akun Anda untuk menikmati seluruh fitur sephora',
                    style: TextStyle(
                      color: Color(0xFF727FA3),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 20),
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                  color: const Color(0xFFF3F7FD),
                  borderRadius: BorderRadius.circular(8)),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.blue,
                size: 20,
              ),
            )
          ],
        ),
      );
    }
    return const SizedBox();
  }
}

enum StatusType {
  aktif,
  nonaktif,
}
