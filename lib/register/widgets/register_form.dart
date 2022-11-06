import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  leading: Image.asset(
                    'assets/register/ktp.png',
                    width: 40,
                  ),
                  title: const Text(
                    'Informasi Data Diri',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: const Text(
                    'Masukkan informasi data diri Anda \n'
                    'untuk proses pembuatan akun.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFE9F0FF),
                      ),
                    ),
                  ),
                ),
                _Input(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: TextField(
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(16)
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              fillColor: const Color(0xFFF3F7FD),
              filled: true,
              hintStyle: const TextStyle(
                color: Color(0xFF97A5C9),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              hintText: 'NIK',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: TextField(
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(13)
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              fillColor: const Color(0xFFF3F7FD),
              filled: true,
              hintStyle: const TextStyle(
                color: Color(0xFF97A5C9),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              hintText: 'No. Telpon',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
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
              hintText: 'Nama Lengkap',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
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
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              hintText: 'Tanggal lahir',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: const Icon(
                Icons.calendar_today_outlined,
                color: Color(0xFF2F82FF),
                size: 20,
              ),
            ),
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
              hintText: 'Email',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
