import 'package:flutter/material.dart';
import 'package:sephora/register/register.dart';
import '../widgets/register_appbar.dart';
import '../widgets/register_form.dart';
import '../widgets/register_next_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          children: [
            const RegisterAppbar(title: 'Buat Akun'),
            const Expanded(
              child: SingleChildScrollView(
                child: RegisterForm(),
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
                          builder: (context) => const RegisterOtp(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
