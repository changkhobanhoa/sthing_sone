import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_identifier/models/newsfeed.model.dart';
import 'package:plant_identifier/widget/widget_newsfeed_item.dart';
import 'package:shimmer/shimmer.dart';

import '../../global/global_colors.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({super.key});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bảng tin",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.penToSquare,
                color: Colors.black,
              ))
        ],
        backgroundColor: GlobalColors.bgApp,
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          animationDuration: const Duration(milliseconds: 200),
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                buttonMargin: const EdgeInsets.all(6),
                backgroundColor: GlobalColors.bgAppt,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    icon: Icon(Icons.directions_car),
                    text: "car",
                  ),
                  Tab(
                    icon: Icon(Icons.directions_transit),
                    text: "transit",
                  ),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                          gradient: GlobalColors.gradientApp),
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        itemCount: NewsFeed.listNewsFeed.length,
                        itemBuilder: (context, index) {
                          return WidgetNewsFeed(
                              model: NewsFeed.listNewsFeed[index]);
                        },
                      ),
                    ),
                    const Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    const Center(
                      child: Icon(Icons.directions_bike),
                    ),
                    const Center(
                      child: Icon(Icons.directions_car),
                    ),
                    const Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    const Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
