import 'dart:convert';

import 'package:lorem_ipsum/lorem_ipsum.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class NewsFeed {
  final String imageUrl;
  final String newsTitle;
  final String publishedDate;
  final String author;
  final String newsContent;
  NewsFeed({
    required this.imageUrl,
    required this.newsTitle,
    required this.publishedDate,
    required this.author,
    required this.newsContent,
  });

  static List<NewsFeed> listNewsFeed = [
    NewsFeed(
      imageUrl:
          "https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg",
      newsTitle: loremIpsum(words: 10),
      publishedDate: '22-11-2023',
      author: loremIpsum(words: 2),
      newsContent: loremIpsum(words: 20),
    ),
    NewsFeed(
      imageUrl:
          "https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg",
      newsTitle: loremIpsum(words: 10),
      publishedDate: '02-11-2023',
      author: loremIpsum(words: 2),
      newsContent: loremIpsum(words: 20),
    ),
    NewsFeed(
      imageUrl:
          "https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg",
      newsTitle: loremIpsum(words: 10),
      publishedDate: '11-11-2023',
      author: loremIpsum(words: 2),
      newsContent: loremIpsum(words: 20),
    ),
    NewsFeed(
      imageUrl:
          "https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg",
      newsTitle: loremIpsum(words: 10),
      publishedDate: '22-01-2023',
      author: loremIpsum(words: 2),
      newsContent: loremIpsum(words: 20),
    ),
  ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'newsTitle': newsTitle,
      'publishedDate': publishedDate,
      'author': author,
      'newsContent': newsContent,
    };
  }

  factory NewsFeed.fromMap(Map<String, dynamic> map) {
    return NewsFeed(
      imageUrl: map['imageUrl'] as String,
      newsTitle: map['newsTitle'] as String,
      publishedDate: map['publishedDate'] as String,
      author: map['author'] as String,
      newsContent: map['newsContent'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsFeed.fromJson(String source) =>
      NewsFeed.fromMap(json.decode(source) as Map<String, dynamic>);
}
