import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.cupoeanheadcolor,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            decoration: BoxDecoration(
                color: index == 1 ? Colors.white : null,
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              AppStrings.cupeanHistory,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            decoration: BoxDecoration(
                color: index == 0 ? Colors.white : null,
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              AppStrings.availableCupoen,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
