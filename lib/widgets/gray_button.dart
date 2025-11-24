import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payplus_pos_app/utils/constants/app_colors.dart';

class GrayButton extends StatelessWidget {
  const GrayButton({
    super.key,
    required this.grayButtonText,
    required this.onTap,
  });

  final String grayButtonText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 50.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grayBtnColor,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(9.0),
          color: AppColors.grayBtnColor,
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Text(
            grayButtonText,
            style: TextStyle(
              color: AppColors.grayBtnTextColor,
              fontSize: 14.r,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
