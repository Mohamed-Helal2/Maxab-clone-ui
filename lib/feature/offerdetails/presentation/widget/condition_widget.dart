import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';

import 'apply_condition_widget.dart';

class ConditionWidget extends StatelessWidget {
  const ConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(AppStrings.offercondition, style: TextStyle()),
          SizedBox(height: 10),
          Text(AppStrings.offerdaeadtime, style: TextStyle()),
          SizedBox(height: 10),
          ApplyConditionWidget(),
        ],
      ),
    );
  }
}
