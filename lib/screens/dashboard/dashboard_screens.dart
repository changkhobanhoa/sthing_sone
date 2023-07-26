import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:plant_identifier/screens/newsfeed/newsfeed_screen.dart';
import '/global/global_colors.dart';
import '../home/home_screens.dart';
import '../profile/profile_screens.dart';

class DashBoardScreens extends StatefulWidget {
  const DashBoardScreens({super.key});

  @override
  State<DashBoardScreens> createState() => _DashBoardScreensState();
}

class _DashBoardScreensState extends State<DashBoardScreens> {
  int indexPages = 0;
  late PersistentTabController controller;
  List<Widget> pages = const [
    HomeScreens(),
    NewsFeedScreen(),
    ProfileScreens(),
    ProfileScreens(),
    ProfileScreens(),
  ];
  @override
  void initState() {
    controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller = PersistentTabController(initialIndex: 0);
    debugPrint("reload dashboard");
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: SizedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {
                indexPages = 4;
              });
            },
            child: const Icon(
              CupertinoIcons.qrcode_viewfinder,
              size: 50,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  getBody() {
    return Container(
      decoration: const BoxDecoration(gradient: GlobalColors.gradientApp),
      child: IndexedStack(
        index: indexPages,
        children: pages,
      ),
    );
  }

  getFooter() {
    Map<IconData, String> iconDataMap = {
      CupertinoIcons.home: "Trang chủ",
      CupertinoIcons.news_solid: "Tin Tức",
      Icons.notifications: "Thông báo",
      CupertinoIcons.person_alt_circle: "Tôi",
    };

    List<IconData> iconList = iconDataMap.keys.toList();

    return AnimatedBottomNavigationBar.builder(
      itemCount: iconList.length,
      activeIndex: indexPages,
      onTap: (index) {
        setState(() {
          indexPages = index;
        });
      },
      tabBuilder: (index, isActive) {
        final color = isActive ? GlobalColors.bgAppt : Colors.black;
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconList[index],
              size: 24,
              color: color,
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: AutoSizeText(
                iconDataMap.values.toList()[index],
                maxLines: 1,
                style: TextStyle(
                    color: color, fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
      backgroundColor: Colors.grey.shade300,
      splashColor: Colors.grey,
      splashSpeedInMilliseconds: 300,
      notchSmoothness: NotchSmoothness.defaultEdge,
      gapLocation: GapLocation.center,
      height: 70,
    );
  }
}
