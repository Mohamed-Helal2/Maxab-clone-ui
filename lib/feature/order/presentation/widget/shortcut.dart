import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_images.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';
import 'package:maxap/feature/shortcut/presentation/shortcut_screen.dart';

import '../../../../core/widget/custom_shortcut_widget.dart';

class Shortcut extends StatelessWidget {
  const Shortcut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ShortcutScreen(
                        image: AppImages.noofferimage,
                        text: AppStrings.nopackage,
                        title: AppStrings.titlenooffer,
                      )));
            },
            child: const CustomShortcutWidget(
                color: AppColors.shortcutsave,
                bordercolor: AppColors.shortcutsaveborder,
                text1: AppStrings.savingpackage1,
                text2: AppStrings.savingpackage2,
                image: AppImages.market),
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ShortcutScreen(
                        image: AppImages.noavailableproducts,
                        text: AppStrings.noavailableproducts,
                        title: AppStrings.titlenoproduct,
                      )));
            },
            child: const CustomShortcutWidget(
                color: AppColors.sortcutagaincolor,
                bordercolor: AppColors.sortcutagainbordercolor,
                text1: AppStrings.buyagain1,
                text2: AppStrings.buyagain2,
                image: AppImages.buyagain),
          ),
        ],
      ),
    );
  }
}
