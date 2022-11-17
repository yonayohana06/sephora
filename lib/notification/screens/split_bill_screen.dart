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
        children: [
          const DateSection(date: '12 Januari 2022'),
          SplitBill(
            time: '14:30',
            amount: 'Rp 1.050.000',
            circleAva: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Positioned(
                  left: 100,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.lightGreenAccent,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/home/BRI.png'),
                        scale: 5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 75,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/home/BRI.png'),
                        scale: 5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.brown,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/home/BRI.png'),
                        scale: 5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/home/BRI.png'),
                        scale: 5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/home/BRI.png'),
                        scale: 5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SplitBill(
            time: '14:30',
            amount: 'Rp 150.000',
            circleAva: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Positioned(
                  left: 50,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.brown,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/home/BRI.png'),
                        scale: 5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/home/BRI.png'),
                        scale: 5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/home/BRI.png'),
                        scale: 5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
