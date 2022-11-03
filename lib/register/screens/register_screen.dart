import 'package:flutter/material.dart';
import 'package:sephora/register/register.dart';
import '../widgets/register_back_arrow.dart';
import '../widgets/register_form.dart';

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
        persistentFooterButtons: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Activation()),
                );
              },
              child: const Text('Selanjutnya'),
            ),
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
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
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              const RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
