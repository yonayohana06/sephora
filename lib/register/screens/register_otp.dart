import 'package:flutter/material.dart';
import 'package:sephora/register/register.dart';
import 'package:sephora/register/widgets/otp_digit.dart';
import 'package:sephora/register/widgets/otp_number_pad.dart';

import '../widgets/register_back_arrow.dart';

class RegisterOtp extends StatelessWidget {
  const RegisterOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RegisterBackArrow(),
                  ),
                  Text(
                    'Otp',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2B2F3C),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/register/mobile.png',
                width: 70,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                '04 : 30',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Masukkan 6 digit kode OTP yang telah dikirimkan \n'
                'melalui nomor telepon +628 1231231232',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const OtpDigit(),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Activation()),
                  );
                },
                child: Text('Kirim Ulang'),
              ),
              OtpNumberPad(),
            ],
          ),
        ),
      ),
    );
  }
}
