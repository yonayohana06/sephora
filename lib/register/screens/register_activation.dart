import 'package:flutter/material.dart';
import 'package:sephora/register/register.dart';

class Activation extends StatefulWidget {
  const Activation({super.key});

  @override
  State<Activation> createState() => _ActivationState();
}

class _ActivationState extends State<Activation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          children: [
            const RegisterAppbar(title: 'Activasi Akun'),
            const Expanded(
              child: SingleChildScrollView(
                child: ActivationForm(),
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RegisterNextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPin(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
