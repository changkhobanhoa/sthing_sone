import 'package:flutter/material.dart';
import 'package:plant_identifier/models/newsfeed.model.dart';
import 'package:plant_identifier/screens/auth/auth_screens.dart';
import 'package:plant_identifier/screens/dashboard/dashboard_screens.dart';
import 'package:plant_identifier/screens/auth/otp_screen.dart';
import 'package:plant_identifier/screens/newsfeed/newsfeed_detail_screen.dart';
import 'package:plant_identifier/screens/profile/profile_screens.dart';
import 'package:plant_identifier/screens/splash_screens.dart';

class GenerateRoute {
  static const String loginScreen = '/login-screen';
  static const String homeScreen = '/home-screen';
  static const String dashboard = '/dashboard-screen';
  static const String profileScreens = '/profile-screen';
  static const String otpScreens = '/otp-screen';
  static const String detailNewsfeed = '/detail-newsfeed-screen';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (context) => const SplashScreens(), settings: settings);
      case loginScreen:
        return MaterialPageRoute(
            builder: (context) => const AuthScreens(), settings: settings);
      case dashboard:
        return MaterialPageRoute(
            builder: (context) => const DashBoardScreens(), settings: settings);
      case profileScreens:
        return MaterialPageRoute(
            builder: (context) => const ProfileScreens(), settings: settings);
      case detailNewsfeed:
        final args = settings.arguments as Map<String, dynamic>?;
        final model = args?['newsfeed'] as NewsFeed?;
        return MaterialPageRoute(
          builder: (context) => NewsFeedDetailScreen(model: model!),
          settings: settings,
        );

      case otpScreens:
        return MaterialPageRoute(
            builder: (context) => const OtpScreens(), settings: settings);
      default:
        return notfoundPage();
    }
  }

  static Route notfoundPage() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
