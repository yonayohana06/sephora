import 'package:flutter/material.dart';
import 'package:sephora/home/home.dart';

class RecentHistory extends StatelessWidget {
  const RecentHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          SectionTitle(
            title: 'Riwayat Terakhir',
            onSeeAll: () {},
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
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
            child: Column(
              children: const [
                RecentHistoryItem(
                  imageProvider: AssetImage('assets/home/transaction_out.png'),
                  title: 'Top Up E-Wallet',
                  description: 'Gopay - 08123123123',
                  amount: 14000000,
                  type: TransactionType.keluar,
                ),
                RecentHistoryItem(
                  imageProvider: AssetImage('assets/home/top_up.png'),
                  title: 'Transfer Masuk',
                  description: 'BRI - 3453 3434 3435',
                  amount: 130000000,
                  type: TransactionType.masuk,
                ),
                RecentHistoryItem(
                  imageProvider: AssetImage('assets/home/checkout.png'),
                  title: 'Pembelian',
                  description: 'Telkomsel - 08123123123',
                  amount: 14000000,
                  type: TransactionType.keluar,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
