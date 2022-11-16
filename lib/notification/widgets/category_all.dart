import 'package:flutter/material.dart';
import 'package:sephora/notification/notification.dart';

class CategoryAll extends StatelessWidget {
  const CategoryAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: const [
          DateSection(date: '12 Januari 2022'),
          CardItem(
            amount: 'Rp 150.000.000',
            icon: Icons.north_east_outlined,
            image: 'assets/home/BRI.png',
            time: '14:30',
            transaction: 'Transaksi Keluar',
            trxType: 'Ahmad Alfiansyah - 4434 5384 3478',
            type: TransactionType.keluar,
          ),
          SizedBox(height: 15),
          Promotion(
            headline: 'Promo',
            time: '14:30',
            image: 'assets/home/promo',
            title: 'Promo Cashback Belanja Pulsa Dengan OVO',
          ),
          SizedBox(height: 45),
          DateSection(date: '11 Januari 2022'),
          CardItem(
            amount: 'Rp 150.000.000',
            icon: Icons.south_east,
            image: 'assets/home/BRI.png',
            time: '14:30',
            transaction: 'Transaksi Masuk',
            trxType: 'Ahmad Alfiansyah - 4434 5384 3478',
            type: TransactionType.masuk,
          ),
          SizedBox(height: 15),
          CardItem(
            amount: 'Rp 150.000',
            icon: Icons.north_east_outlined,
            image: 'assets/home/tsel.png',
            time: '14:30',
            transaction: 'Pembelian',
            trxType: 'Pulsa Telkomsel - 0827373737',
            type: TransactionType.keluar,
          ),
          SizedBox(height: 15),
          CardItem(
            amount: 'Rp 150.000.000',
            icon: Icons.north_east_outlined,
            image: 'assets/home/MANDIRI.png',
            time: '14:30',
            transaction: 'Pembelanjaan',
            trxType: 'Kartu Kredit - 4434 5384 3478',
            type: TransactionType.keluar,
          ),
        ],
      ),
    );
  }
}
