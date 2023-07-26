import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_identifier/global/global_colors.dart';

import '../../models/newsfeed.model.dart';

class NewsFeedDetailScreen extends StatelessWidget {
  const NewsFeedDetailScreen({super.key, required this.model});
  final NewsFeed model;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        shadowColor: GlobalColors.bgApp,
        backgroundColor: GlobalColors.bgApp,
        title: Text(
          model.newsTitle,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Center(
            child: Container(
              width: size.width - 60,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: NetworkImage(model.imageUrl), fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.author,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    model.publishedDate,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const Icon(CupertinoIcons.calendar)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(model.newsContent,style: TextStyle(fontSize: 16),)
        ]),
      )),
    );
  }
}
