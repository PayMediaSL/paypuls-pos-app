import 'package:flutter/material.dart';
import 'package:payplus_pos_app/utils/constants/app_colors.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 28,
            color: AppColors.iconColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        IconButton(
          icon: const Icon(Icons.menu, size: 28, color: AppColors.iconColor),
          onPressed: () {},
        ),
      ],
    );
  }
}
