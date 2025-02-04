import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.selectednavrcolor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(AppStrings.returnToMainPage,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
      ),
    );
  }
}
