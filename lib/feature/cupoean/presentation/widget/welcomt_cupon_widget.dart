import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxap/core/strings/app_images.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';
import 'package:maxap/feature/cupoean/presentation/widget/know_more_button.dart';

class WelcomtCuponWidget extends StatelessWidget {
  const WelcomtCuponWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.welcometocuponcolor,
      padding: const EdgeInsets.only(top: 60, right: 15, left: 15,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              SvgPicture.asset(AppImages.mancuponimage, height: 140),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
             children: [
              Text(
                AppStrings.welcometocupon1,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                AppStrings.welcometocupon2,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              KnowMoreButton(), 
             
            ],
          ),
        ],
      ),
    );
  }
}
