import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payplus_pos_app/utils/constants/app_colors.dart';
import 'package:payplus_pos_app/utils/constants/assets_path.dart';
import 'package:payplus_pos_app/widgets/button_row.dart';

class FailScreen extends StatefulWidget {
  const FailScreen({
    super.key,
    this.paymentAmount,
    this.paymentStatus,
    this.paymentStatusDescription,
  });

  final String? paymentAmount;
  final String? paymentStatus;
  final String? paymentStatusDescription;

  @override
  State<FailScreen> createState() => _FailScreenState();
}

class _FailScreenState extends State<FailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 28.h),
                    child: Text(
                      'LKR .',
                      style: TextStyle(
                        fontSize: 25.r,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ),
                  Text(
                    widget.paymentAmount!,
                    style: TextStyle(
                      fontSize: 50.r,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 28.h),
                    child: Text(
                      '.00',
                      style: TextStyle(
                        fontSize: 25.r,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40.h),
          SizedBox(
            height: 120,
            width: 120,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.cancelRedColor,
                borderRadius: BorderRadius.circular(60.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Image.asset(AssetsPath.closeMark),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                widget.paymentStatus!,
                style: TextStyle(
                  fontSize: 30.r,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryTextColor,
                ),
              ),
              Text(
                widget.paymentStatusDescription!,
                style: TextStyle(
                  fontSize: 16.r,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grayTextColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 70.h),
          ButtonRow(
            grayButtonText: 'Back',
            blueBlueText: 'Close',
            onTapGrayButton: () {
              Navigator.of(context).pop();
            },
            onTapBlueButton: () {
              // Handle blue button tap
            },
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
