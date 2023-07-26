// ignore_for_file: public_member_api_docs, sort_constructors_first
 
import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Category {
  final String name;
  final IconData image;
  final String decription;
  Category({
    required this.name,
    required this.image,
    required this.decription,
  });

  
 

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image.codePoint,
      'decription': decription,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      name: map['name'] as String,
      image: IconData(map['image'] as int, fontFamily: 'MaterialIcons'),
      decription: map['decription'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) => Category.fromMap(json.decode(source) as Map<String, dynamic>);
}
