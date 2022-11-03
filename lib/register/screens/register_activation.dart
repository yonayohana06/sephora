import 'package:flutter/material.dart';
import '../widgets/activation_form.dart';
import '../widgets/register_back_arrow.dart';

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
        persistentFooterButtons: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
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
                      'Aktivasi Akun',
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
              const ActivationForm()
            ],
          ),
        ),
      ),
    );
  }
}
