import 'package:flutter/material.dart';

class OtpNumberPad extends StatelessWidget {
  const OtpNumberPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        childAspectRatio: 1.9,
        mainAxisSpacing: 15,
        crossAxisSpacing: 10,
        shrinkWrap: true,
        children: const [
          NumberPadItem(text: '1'),
          NumberPadItem(text: '2'),
          NumberPadItem(text: '3'),
          NumberPadItem(text: '4'),
          NumberPadItem(text: '5'),
          NumberPadItem(text: '6'),
          NumberPadItem(text: '7'),
          NumberPadItem(text: '8'),
          NumberPadItem(text: '9'),
          NumberPadItem(text: ''),
          NumberPadItem(text: '0'),
          NumberPadItem(
            text: '12',
            icon: Icon(
              Icons.backspace_outlined,
              color: Color(0xFF2F82FF),
            ),
          ),
        ],
      ),
    );
  }
}

class NumberPadItem extends StatelessWidget {
  const NumberPadItem({super.key, required this.text, this.icon});

  final String text;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    if (text == '') {
      return Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
      );
    }
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Color(0xFFF3F7FD),
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Builder(
        builder: (context) {
          if (icon != null) {
            return icon!;
          }
          return Text(
            text,
            style: TextStyle(
              color: Color(0xFF2B2F3C),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          );
        },
      ),
    );
  }
}
