import 'package:flutter/material.dart';
import 'package:sephora/app_theme.dart';

class UserStack extends StatefulWidget {
  const UserStack({super.key});

  @override
  State<UserStack> createState() => _UserStackState();
}

final users = [
  <String, dynamic>{
    'image': 'assets/home/person.png',
  },
  <String, dynamic>{
    'image': 'assets/home/person.png',
  },
  <String, dynamic>{
    'image': 'assets/home/person.png',
  },
  <String, dynamic>{
    'image': 'assets/home/person.png',
  },
  <String, dynamic>{
    'image': 'assets/home/person.png',
  }
];

class _UserStackState extends State<UserStack>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _moveRight;

  final movementLength = 25.0;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );

    _moveRight = Tween<double>(
      begin: 0,
      end: movementLength,
    ).animate(_controller);
    super.initState();

    _controller.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: users.asMap().entries.map(
          (e) {
            final index = e.key;
            final value = e.value;
            return Positioned(
              left: _moveRightValue(index),
              child: StackItem(
                image: AssetImage(value['image']),
                active: index == users.length - 1,
              ),
            );
          },
        ).toList(),
      ),
    );
  }

  double _moveRightValue(int index) {
    final x = _moveRight.value * (users.length - index) - movementLength;
    return x < 0 ? 0 : x;
  }
}

class StackItem extends StatelessWidget {
  const StackItem({
    super.key,
    required this.active,
    required this.image,
  });

  final bool active;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: active ? AppTheme.primary : AppTheme.secondary,
          width: 2,
          style: BorderStyle.solid,
        ),
        color: Colors.amber,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: image,
        ),
      ),
    );
  }
}
