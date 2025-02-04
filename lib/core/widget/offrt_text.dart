import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class OffrtText extends StatelessWidget {
  const OffrtText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: AppStrings.discountword,
            style: TextStyle(color: Colors.black,  fontWeight: FontWeight.w900,
                fontSize: 20),  
          ),
          TextSpan(
            text: AppStrings.discountpercentage,
            style: TextStyle(color: AppColors.offerbuttincolot,  fontWeight: FontWeight.bold,
                fontSize: 20),  
          ),
          TextSpan(
            text: AppStrings.inorder,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20),  
          ),
        ],
      ),
    );
  }
}
