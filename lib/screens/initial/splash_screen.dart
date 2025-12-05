import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payplus_pos_app/utils/constants/assets_path.dart';
import 'package:payplus_pos_app/utils/constants/routes.dart';
import 'package:payplus_pos_app/widgets/fail_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(Routes.failScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const SplashScreenPath = AssetsPath.splashImage;

    precacheImage(const AssetImage(SplashScreenPath), context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(SplashScreenPath),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Semi-transparent overlay for blur effect
          Container(color: Colors.black.withOpacity(0.3)),

          // Logo in white circle near bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Container(
                height: 120.r,
                width: 120.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Image.asset(
                    AssetsPath.splashLogo,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
