import 'package:flutter/material.dart';

class RegisterBackArrow extends StatelessWidget {
  const RegisterBackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(188, 200, 231, 255),
            blurRadius: 10,
            offset: Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {},
        alignment: Alignment.center,
        icon: const Icon(
          Icons.arrow_back,
          color: Color(0xFF2F82FF),
        ),
        iconSize: 20,
      ),
    );
  }
}
