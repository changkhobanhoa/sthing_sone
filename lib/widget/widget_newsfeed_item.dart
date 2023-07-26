import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_identifier/global/generate_route.dart';
import 'package:plant_identifier/global/global_colors.dart';
import 'package:plant_identifier/models/newsfeed.model.dart';

class WidgetNewsFeed extends StatelessWidget {
  final NewsFeed model;
  const WidgetNewsFeed({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigator!.pushNamed(GenerateRoute.detailNewsfeed,
            arguments: {'newsfeed': model});
      },
      child: Card(
        elevation: 2.0,
        margin: const EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: NetworkImage(model.imageUrl),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      model.newsTitle,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(model.newsContent, maxLines: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text(model.author,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                                color: GlobalColors.bgBlue)),
                      ),
                      Row(
                        children: [
                          Text(model.publishedDate),
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(CupertinoIcons.calendar)
                        ],
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
