import 'package:flutter/material.dart';
import 'package:payplus_pos_app/screens/initial/splash_screen.dart';
import 'package:payplus_pos_app/screens/sales_screen.dart';
import 'package:payplus_pos_app/utils/constants/routes.dart';
import 'package:payplus_pos_app/utils/error/error_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.salesScreen:
        return MaterialPageRoute(builder: (_) => const SalesScreen());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
    }
  }
}
