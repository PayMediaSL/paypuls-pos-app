import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payplus_pos_app/routes/route_generator.dart';
import 'package:payplus_pos_app/utils/constants/app_colors.dart';
import 'package:payplus_pos_app/utils/constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          ),
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: Routes.splashScreen,
          debugShowCheckedModeBanner: false
        );
      },
    );
  }
}
