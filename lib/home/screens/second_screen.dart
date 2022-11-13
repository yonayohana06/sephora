import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Builder(
              builder: (context) {
                List horizontalMenuList = [
                  {
                    "icon": Icons.abc,
                    "label": "Home",
                    "onTap": () {},
                  },
                  {
                    "icon": Icons.tiktok,
                    "label": "Tiktok",
                    "onTap": () {},
                  },
                  {
                    "icon": Icons.facebook,
                    "label": "Facebook",
                    "onTap": () {},
                  },
                  {
                    "icon": Icons.access_alarm,
                    "label": "Task",
                    "onTap": () {},
                  },
                  {
                    "icon": Icons.developer_board,
                    "label": "Developer",
                    "onTap": () {},
                  },
                  {
                    "icon": Icons.web,
                    "label": "Website",
                    "onTap": () {},
                  },
                  {
                    "icon": Icons.mobile_screen_share_rounded,
                    "label": "Share",
                    "onTap": () {},
                  },
                  {
                    "icon": Icons.event,
                    "label": "Event",
                    "onTap": () {},
                  },
                ];

                return SizedBox(
                  height: 50.0,
                  child: ListView.builder(
                    itemCount: horizontalMenuList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var item = horizontalMenuList[index];
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blueGrey,
                          animationDuration: const Duration(milliseconds: 1000),
                          backgroundColor: Colors.transparent,
                          splashFactory: InkSplash.splashFactory,
                          shadowColor: Colors.transparent,
                          elevation: 0.0,
                        ),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              item["icon"],
                              color: Colors.blueGrey,
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              item["label"],
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 8.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
