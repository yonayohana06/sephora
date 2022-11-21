import 'package:flutter/material.dart';
import 'package:sephora/notification/notification.dart';

class SplitBillScreen extends StatefulWidget {
  const SplitBillScreen({super.key});

  @override
  State<SplitBillScreen> createState() => _SplitBillScreenState();
}

class _SplitBillScreenState extends State<SplitBillScreen> {
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
          SplitBill(
            time: '14:30',
            amount: 'Rp 1.050.000',
          ),
          SizedBox(height: 15),
          SplitBill(
            time: '14:30',
            amount: 'Rp 150.000',
          ),
        ],
      ),
    );
  }
}
