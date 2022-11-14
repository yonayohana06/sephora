import 'package:flutter/material.dart';
import 'package:sephora/register/register.dart';

class RegisterPin extends StatefulWidget {
  const RegisterPin({super.key});

  @override
  State<RegisterPin> createState() => _RegisterPinState();
}

class _RegisterPinState extends State<RegisterPin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          children: [
            const RegisterAppbar(title: 'MPIN'),
            const Expanded(child: PinForm()),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RegisterNextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TermAndCondition(),
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
