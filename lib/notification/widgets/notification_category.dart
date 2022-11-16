import 'package:flutter/material.dart';
import 'package:sephora/notification/notification.dart';
import 'package:sephora/register/register.dart';

class NotificationCategory extends StatefulWidget {
  const NotificationCategory({super.key});

  @override
  State<NotificationCategory> createState() => _NotificationCategoryState();
}

class _NotificationCategoryState extends State<NotificationCategory> {
  int crnt = 0;
  List<String> category = [
    'Semua',
    'Info & Promo',
    'Transaksi',
    'Split Bill',
    'Keamanan',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RegisterAppbar(title: 'Notification'),
        SizedBox(
          height: 35,
          child: ListView.builder(
            itemCount: category.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: index == 0
                    ? const EdgeInsets.only(left: 20, right: 10)
                    : const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          crnt = index;
                        });
                      },
                      child: _buttonCategory(index),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        _categoryAll(crnt),
      ],
    );
  }

  Widget _categoryAll(crnt) {
    if (crnt == 0) {
      return CategoryAll();
    }
    return Text("text");
  }

  Widget _buttonCategory(index) {
    return Container(
      height: 26,
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: crnt == index ? Colors.blue : Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            blurStyle: BlurStyle.normal,
            color: const Color(0xFFBCC8E7).withOpacity(0.3),
            offset: const Offset(0, 0),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: Text(
          category[index],
          style: TextStyle(
            color: crnt == index ? Colors.white : Colors.blue,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
