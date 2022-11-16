import 'package:flutter/material.dart';

class RegisterNextButton extends StatelessWidget {
  const RegisterNextButton({super.key, required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                onPressed();
              },
              child: const Text('Selanjutnya'),
            ),
          ),
        ],
      ),
    );
  }
}
