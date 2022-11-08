import 'package:flutter/material.dart';
import 'package:sephora/register/widgets/register_headline.dart';

class PinForm extends StatelessWidget {
  const PinForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            RegisterHeadline(
              headline: 'Informasi MPIN',
              desc: 'Masukkan informasi mengenai MPIN '
                  'akun mobile banking Sephora Anda.',
              icon: Icons.lock_outline_rounded,
            ),
            Divider(height: 40),
            _Input(),
          ],
        ),
      ),
    );
  }
}

class _Input extends PinForm {
  const _Input();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              fillColor: const Color(0xFFF3F7FD),
              filled: true,
              hintStyle: const TextStyle(
                color: Color(0xFF97A5C9),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              hintText: 'MPIN',
              helperText: 'Berisi Alphanumeric sejumlah 6 karakter.',
              helperStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xFFBCC8E7),
              ),
              suffixIcon: SizedBox(
                width: 1,
                height: 1,
                child: Image.asset(
                  'assets/register/eye_close.png',
                  scale: 1.5,
                  alignment: Alignment.center,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            obscureText: true,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              fillColor: const Color(0xFFF3F7FD),
              filled: true,
              hintStyle: const TextStyle(
                color: Color(0xFF97A5C9),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              hintText: 'Konfirmasi MPIN',
              suffixIcon: SizedBox(
                width: 1,
                height: 1,
                child: Image.asset(
                  'assets/register/eye_close.png',
                  scale: 1.5,
                  alignment: Alignment.center,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            obscureText: true,
          ),
        ),
      ],
    );
  }
}
