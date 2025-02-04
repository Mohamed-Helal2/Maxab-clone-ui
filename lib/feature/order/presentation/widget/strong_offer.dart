import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';
import 'package:maxap/core/widget/custom_text.dart';

class StrongOffer extends StatelessWidget {
  const StrongOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.arrow_back_ios_new,
                size: 15, color: AppColors.bannercolor),
            SizedBox(width: 5),
            Text(AppStrings.viewall,
                style: TextStyle(
                    color: AppColors.bannercolor, fontWeight: FontWeight.w700)),
          ],
        ),
        CustomText(text: AppStrings.strongoffer),
      ],
    );
  }
}
