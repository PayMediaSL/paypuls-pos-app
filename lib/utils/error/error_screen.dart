import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payplus_pos_app/utils/constants/app_colors.dart';
import 'package:payplus_pos_app/widgets/button_row.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 404 Large Text
                Text(
                  '404',
                  style: TextStyle(
                    fontSize: 60.r,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                    letterSpacing: 5,
                  ),
                ),
                SizedBox(height: 20.h),

                // Icon
                Icon(
                  Icons.search_off_rounded,
                  size: 50.r,
                  color: AppColors.grayTextColor,
                ),
                SizedBox(height: 30.h),

                // Page Not Found Text
                Text(
                  'Page Not Found',
                  style: TextStyle(
                    fontSize: 32.r,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15.h),

                // Description
                Text(
                  'The page you are looking for doesn\'t exist or has been moved.',
                  style: TextStyle(
                    fontSize: 16.r,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grayTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60.h),

                ButtonRow(
                  grayButtonText: 'Back',
                  blueBlueText: 'Home',
                  onTapGrayButton: () {
                    Navigator.of(context).pop();
                  },
                  onTapBlueButton: () {
                    Navigator.of(
                      context,
                    ).pushNamedAndRemoveUntil('/', (route) => false);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
