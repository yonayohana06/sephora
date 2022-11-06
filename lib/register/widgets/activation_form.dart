import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ActivationForm extends StatelessWidget {
  const ActivationForm({super.key});

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
                    'assets/register/person.png',
                    width: 40,
                  ),
                  title: const Text(
                    'Informasi Akun',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: const Text(
                    'Masukkan informasi mengenai akun \n'
                    'mobile banking Sephora Anda.',
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
              hintText: 'No. Rekening',
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
              hintText: 'ID Pengguna',
              helperText: 'Berisi Alphanumeric sejumlah 10-30 karakter.',
              helperStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xFFBCC8E7),
              ),
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
              hintText: 'Kata Sandi',
              helperText: 'Berisi Alphanumeric sejumlah 8-10 karakter.',
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
              hintText: 'Konfirmasi Kata Sandi',
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
          ),
        ),
      ],
    );
  }
}
