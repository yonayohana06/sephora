import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sephora/home/home.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          SectionTitle(
            title: 'Daftar Favorit',
            onSeeAll: () {},
          ),
          _FavoriteListItems(),
        ],
      ),
    );
  }
}

class _FavoriteListItems extends FavoriteList {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _AddFavorite(),
        _FavoriteItems(
          text: 'Ahmad Wahyu',
          image: Image.asset(
            'assets/home/MANDIRI.png',
          ),
        ),
        _FavoriteItems(
          text: 'Dimas Bayu',
          image: Image.asset(
            'assets/home/BRI.png',
          ),
        ),
        _FavoriteItems(
          text: 'Sofian Nur',
          image: Image.asset(
            'assets/home/JENIUS.png',
          ),
        )
      ],
    );
  }
}

class _AddFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DottedBorder(
          borderType: BorderType.Circle,
          color: Colors.blue,
          dashPattern: const [8],
          strokeWidth: 1.5,
          child: Container(
            width: 57,
            height: 57,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  blurStyle: BlurStyle.normal,
                  color: const Color(0xFF98A4C3).withOpacity(0.25),
                  offset: const Offset(0, 2),
                  spreadRadius: 4,
                ),
              ],
            ),
            child: const Icon(
              Icons.add_outlined,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ),
        const Text(
          'Tambah',
          style: TextStyle(
            color: Color(0xFf2B2F3C),
            fontSize: 12,
            fontWeight: FontWeight.w500,
            height: 2,
          ),
        ),
      ],
    );
  }
}

class _FavoriteItems extends StatelessWidget {
  const _FavoriteItems({
    required this.text,
    this.icon,
    required this.image,
  });

  final String text;
  final Icon? icon;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                blurStyle: BlurStyle.normal,
                color: const Color(0xFFBCC8E7).withOpacity(0.25),
                offset: const Offset(0, 2),
                spreadRadius: 2,
              ),
            ],
          ),
          child: Builder(
            builder: (context) => (icon != null) ? icon! : image,
          ),
        ),
        Builder(builder: (context) {
          final labelLength = text.length;
          const idealChar = 8;
          const filler = '...';
          if (labelLength > 8) {
            var cutLabel = text.substring(0, idealChar);
            return Text(
              '$cutLabel$filler',
              style: const TextStyle(
                color: Color(0xFf2B2F3C),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 2,
              ),
            );
          }
          return Text(
            text,
            style: const TextStyle(
              color: Color(0xFf2B2F3C),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 2,
            ),
          );
        })
      ],
    );
  }
}
