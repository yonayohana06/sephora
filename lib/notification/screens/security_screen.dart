import 'package:flutter/material.dart';
import 'package:sephora/notification/notification.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
        left: 20,
        right: 20,
        bottom: 40,
      ),
      child: Column(
        children: const [
          DateSection(date: '12 Januari 2022'),
          Info(
            headline: 'Keamanan',
            title: 'Transaksi Anomali',
            desc: 'Kami mendeteksi adanya transaksi anomali '
                'pada akun Anda di jam 17:00 WIB sebesar...',
            icon: Icon(
              Icons.lock_outline_rounded,
              color: Colors.blue,
            ),
            time: '14:30',
          ),
          SizedBox(height: 15),
          Info(
            headline: 'Keamanan',
            title: 'Transaksi Anomali',
            desc: 'Kami mendeteksi adanya upaya login '
                'pada akun Anda di jam 17:00 WIB',
            icon: Icon(
              Icons.lock_outline_rounded,
              color: Colors.blue,
            ),
            time: '14:30',
          )
        ],
      ),
    );
  }
}
