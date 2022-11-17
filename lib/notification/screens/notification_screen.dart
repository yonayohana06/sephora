import 'package:flutter/material.dart';
import 'package:sephora/notification/notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            NotificationCategory(
              onChanged: (crnt) {
                setState(() {
                  index = crnt;
                });
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Builder(
                  builder: (context) {
                    if (index == 0) {
                      return const CategoryAll();
                    } else if (index == 1) {
                      return const InformationScreen();
                    } else if (index == 2) {
                      return const TransactionScreen();
                    } else if (index == 3) {
                      return const SplitBillScreen();
                    }
                    return const SecurityScreen();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
