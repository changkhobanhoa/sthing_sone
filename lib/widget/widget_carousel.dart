import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WidgetCarousel extends StatelessWidget {
  const WidgetCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return CarouselSlider(
      items: [1, 2, 3, 4, 5].map((e) {
        return Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(10.0)),
          child: Text(
            "Text $e",
            style: const TextStyle(fontSize: 20),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
        disableCenter: true,

      ),
      disableGesture: true,
    );
  }
}
