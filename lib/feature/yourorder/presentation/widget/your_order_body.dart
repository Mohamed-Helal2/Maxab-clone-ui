import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxap/core/strings/app_images.dart';
import 'package:maxap/core/widget/back_button.dart';

import '../../../../core/strings/app_strings.dart';

class YourOrderBody extends StatelessWidget {
  const YourOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.deliveryimage, height: 100),
              const SizedBox(height: 15),
              const Text(
                AppStrings.noordernow,
                style: TextStyle(
                    fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 15),
              const BackButtonWidget(),
            ],
          ),
        ),
      );
  }
}