import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class KnowMoreButton extends StatelessWidget {
  const KnowMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.selectednavrcolor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(AppStrings.knowmore,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
      ),
    );
  }
}
