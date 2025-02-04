import 'package:flutter/material.dart';
import 'package:maxap/core/theme/app_colors.dart';

import '../../../../core/strings/app_strings.dart';

class Warning extends StatelessWidget {
  const Warning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      color: AppColors.warningcolor,
      child: const Text(
        AppStrings.warningText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.bold,
          height: 2,
        ),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
