import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class DateOffer extends StatelessWidget {
  const DateOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          AppStrings.offerdate,
          style: TextStyle(
              color: AppColors.datecolor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        Icon(
          Icons.access_alarm_sharp,
          color: AppColors.datecolor,
        )
      ],
    );
  }
}
