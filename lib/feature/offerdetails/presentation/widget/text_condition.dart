import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';

class TextCondition extends StatelessWidget {
  const TextCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: AppStrings.offerstatus1,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
          ),
          TextSpan(
            text: AppStrings.offerstatus2,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
