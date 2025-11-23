import 'package:flutter/material.dart';
import 'package:payplus_pos_app/utils/constants/assets_path.dart';
import 'package:payplus_pos_app/utils/constants/routes.dart';

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
      Navigator.of(context).pushReplacementNamed(Routes.salesScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    const SplashScreenPath = AssetsPath.splashImage;

    precacheImage(const AssetImage(SplashScreenPath), context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(SplashScreenPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
