import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxap/core/strings/app_images.dart';
import 'package:maxap/core/theme/app_colors.dart';

class ImageOffer extends StatelessWidget {
  const ImageOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppColors.offerimagecolor),
        child: SvgPicture.asset(AppImages.offerimage));
  }
}
