import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payplus_pos_app/utils/constants/app_colors.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    super.key,
    required this.blueBlueText,
    required this.onTap,
  });

  final String blueBlueText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 50.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primaryColor,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(9.0),
          color: AppColors.primaryColor,
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Text(
            blueBlueText,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 14.r,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
