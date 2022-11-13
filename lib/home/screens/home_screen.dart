import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sephora/home/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final iconList = <IconData>[
    Icons.home_filled,
    Icons.article_outlined,
    Icons.star_border_rounded,
    Icons.person_outline
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F7FD),
        body: Column(
          children: [
            const UserInfo(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: const [
                      SizedBox(height: 15),
                      InactiveAccount(),
                      UserJumbotron(),
                      FavoriteList(),
                      RecentHistory(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          //Floating action button on Scaffold
          onPressed: () {
            //code to execute on button press
          },
          child: const Icon(Icons.add_outlined), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: iconList,
            activeIndex: 0,
            gapLocation: GapLocation.center,
            height: 80,
            activeColor: Colors.blue,
            notchSmoothness: NotchSmoothness.smoothEdge,
            leftCornerRadius: 20,
            rightCornerRadius: 20,
            onTap: (index) {
              setState(() {});
            }),
        //floating action button position to center
      ),
    );
  }
}
