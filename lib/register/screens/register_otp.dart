import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sephora/register/register.dart';

class RegisterOtp extends StatefulWidget {
  const RegisterOtp({super.key});

  @override
  State<RegisterOtp> createState() => _RegisterOtpState();
}

class _RegisterOtpState extends State<RegisterOtp> {
  final _otpLength = 6;
  var _otpValue = '';
  int _counter = 0;
  late Timer _timer;

  void _startTimer() {
    _counter = 270;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _counter--;
      });
      if (_counter == 0) {
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            title: Text('Selesai'),
            content: Text('Timer Habis'),
          ),
        );
        _timer.cancel();
      }
    });
  }

  @override
  void initState() {
    _counter;
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          children: [
            const RegisterAppbar(title: 'Otp'),
            Image.asset(
              'assets/register/mobile.png',
              width: 70,
            ),
            const SizedBox(height: 30),
            Text(
              formatTime(_counter),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Masukkan 6 digit kode OTP yang telah dikirimkan \n'
              'melalui nomor telepon +628 1231231232',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            OtpDigit(otpValue: _otpValue, optLength: _otpLength),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                _startTimer();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const Activation(),
                //   ),
                // );
              },
              child: const Text('Kirim Ulang'),
            ),
            OtpNumberPad(
              onChanged: (String value) {
                if (value == 'hapus') {
                  _deleteLastChar();
                }
                if (_otpValue.length < _otpLength) {
                  if (value != 'hapus') {
                    setState(() {
                      _otpValue += value;
                    });
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _deleteLastChar() {
    // print('Semua karakter: $_otpValue');
    // print('Karakter terakhir sekarang: ${_otpValue.split('').last}');
    if (_otpValue.isNotEmpty) {
      final split = _otpValue.split('');
      split.removeLast();
      final join = split.join('');
      // print('Nilai setelah di olah: $join');
      setState(() {
        _otpValue = join;
      });
    }
  }

  String formatTime(int seconds) {
    final duration = Duration(seconds: _counter).toString();
    final firstSplit = duration.split('.').first;
    final removeFirstDigit = firstSplit.split(':')..removeAt(0);
    final cleanTimer = removeFirstDigit.join(':');
    return cleanTimer;
  }
}
