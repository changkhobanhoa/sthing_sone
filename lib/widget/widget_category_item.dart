import 'package:flutter/material.dart';

import '../global/global_colors.dart';
import '../models/category.model.dart';

class WidgetCategory extends StatelessWidget {
  const WidgetCategory({super.key, required this.model});
  final Category model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: GlobalColors.bgAppt,
      elevation: 0,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: SizedBox(
          width: 300,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(model.image,size: 30,color: Colors.white,),
                  Text(
                    model.name,
                    style: const TextStyle(color: Color(0xFF000000),fontSize: 20,fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
