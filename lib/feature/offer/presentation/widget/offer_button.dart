import 'package:flutter/material.dart';
import 'package:maxap/core/theme/app_colors.dart';

import '../../../../core/strings/app_strings.dart';

class OfferButton extends StatelessWidget {
  const OfferButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
  decoration: BoxDecoration(
      color:AppColors.offerbuttincolot, 
    borderRadius: BorderRadius.circular(8),
  ),
  child: MaterialButton(
    onPressed: () {},
  // Button background color
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Text(AppStrings.gotodiscount,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700)),
          SizedBox(width: 10),
          Icon(Icons.discount_outlined,color: Colors.white)
      ],
    ),
  ),
);
  }
}