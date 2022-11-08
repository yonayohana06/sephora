import 'package:flutter/material.dart';

class RegisterAppbar extends StatelessWidget {
  const RegisterAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: _BackArrow(),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2B2F3C),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(200, 188, 200, 231),
            blurRadius: 7,
            offset: Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        alignment: Alignment.center,
        icon: const Icon(
          Icons.west,
          color: Color(0xFF2F82FF),
        ),
        iconSize: 20,
      ),
    );
  }
}
