import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class Version extends StatelessWidget {
  const Version({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.version,
      style: TextStyle(
          color: AppColors.moretextcolor,
          fontSize: 15,
          fontWeight: FontWeight.w500),
    );
  }
}
