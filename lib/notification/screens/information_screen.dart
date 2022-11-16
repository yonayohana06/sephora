import 'package:flutter/material.dart';
import 'package:sephora/notification/notification.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DateSection(date: '12 Januari 2022'),
        Promotion(
          headline: 'Promo',
          title: 'Promo Cashback Belanja Pulsa Dengan OVO',
          time: '14:30',
          image: 'assets/home/promo.png',
        ),
        SizedBox(height: 15),
        Info(
          headline: 'Informasi',
          title: 'Maintenance Selesai',
          desc: 'Nasabah sephora mobile banking yth, '
              'pada jam 17:00 sephora mobile banking telah selesa...',
          icon: Icons.settings,
          time: '14:30',
        )
      ],
    );
  }
}
