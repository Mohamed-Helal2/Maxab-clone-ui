import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class ApplyConditionWidget extends StatelessWidget {
  const ApplyConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: AppStrings.apply,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
          ),
          TextSpan(
            text: AppStrings.termsandconditions,
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor:  AppColors.floatingercolor,
                decorationThickness: 2,  
                color: AppColors.floatingercolor,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
          TextSpan(
            text: AppStrings.alloffers,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
