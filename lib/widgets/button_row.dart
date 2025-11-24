import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payplus_pos_app/widgets/blue_button.dart';
import 'package:payplus_pos_app/widgets/gray_button.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
    required this.grayButtonText,
    required this.blueBlueText,
    required this.onTapGrayButton,
    required this.onTapBlueButton,
  });

  final String grayButtonText;
  final String blueBlueText;
  final Function() onTapGrayButton;
  final Function() onTapBlueButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 1,
          child: GrayButton(
            grayButtonText: grayButtonText,
            onTap: onTapGrayButton,
          ),
        ),
        SizedBox(width: 10.r),
        Flexible(
          flex: 1,
          child: BlueButton(blueBlueText: blueBlueText, onTap: onTapBlueButton),
        ),
      ],
    );
  }
}
