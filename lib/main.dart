import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_identifier/global/generate_route.dart';

import 'screens/dashboard/dashboard_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DashBoardScreens(),
      onGenerateRoute: GenerateRoute.generateRoute,
     
    );
  }
}
