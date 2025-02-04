import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_images.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.notifications,
            size: 40, color: AppColors.moretextcolor),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              AppStrings.name,
              style: TextStyle(fontSize: 18, color: AppColors.moretextcolor),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    AppStrings.country,
                    style: TextStyle(color: AppColors.bannercolor),
                  ),
                  const SizedBox(width: 4),
                  Image.asset(AppImages.egyptimage, height: 15)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
