import 'package:flutter/material.dart';
import 'package:maxap/core/theme/app_colors.dart';

class CustomMoreWidget extends StatelessWidget {
  const CustomMoreWidget({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.morebordercolor)),
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
          text,
            style: const TextStyle(
                color: AppColors.moretextcolor,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 10),
          Icon(
         icon,
            size: 30,
            color: AppColors.moretextcolor,
          )
        ],
      ),
    );
  }
}
