import 'package:flutter/material.dart';
import 'package:sephora/register/widgets/register_back_arrow.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FD),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                RegisterBackArrow(),
                Text(
                  'Buat Akun',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2B2F3C),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
