import 'package:flutter/material.dart';

class UserJumbotron extends StatelessWidget {
  const UserJumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: 335 / 280,
        child: Stack(
          children: const [
            UserBalanceInfo(),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainMenu(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _bgImage() {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage(
              'assets/home/jumbotron_1.png',
            ),
            scale: 2,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            alignment: Alignment.bottomLeft,
            image: AssetImage(
              'assets/home/jumbotron_2.png',
            ),
            scale: 3.3,
          ),
        ),
      ),
    ],
  );
}

class UserBalanceInfo extends StatelessWidget {
  const UserBalanceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFF4728F4),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            blurStyle: BlurStyle.normal,
            color: const Color(0xFFBCC8E7).withOpacity(0.4),
            offset: const Offset(0, 0),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          _bgImage(),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tabungan Harian',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      '1234 1234 1234 6412',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Salin',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 43),
                const Text(
                  'Saldo Rekening Utama',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      'Rp 15.000.000.000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(15),
      height: 80,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/home/transfer.png',
                scale: 4,
              ),
              const Text(
                'Transfer',
                style: TextStyle(
                  color: Color(0xFF2B2F3C),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/home/e_wallet.png',
                scale: 4,
              ),
              const Text(
                'E-Wallet',
                style: TextStyle(
                  color: Color(0xFF2B2F3C),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/home/cart.png',
                scale: 4,
              ),
              const Text(
                'Pembelian',
                style: TextStyle(
                  color: Color(0xFF2B2F3C),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/home/all_menu.png',
                scale: 4,
              ),
              const Text(
                'Lainnya',
                style: TextStyle(
                  color: Color(0xFF2B2F3C),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
