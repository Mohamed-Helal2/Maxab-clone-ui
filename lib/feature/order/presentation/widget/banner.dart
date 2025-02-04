import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.bannercolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
             children: [
              const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20),
             const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(AppStrings.maxapPayment,
                    style: TextStyle(
                        color: AppColors.bannercolor,
                        fontSize: 10,
                        fontWeight: FontWeight.w900)),
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(AppStrings.gotoMaxapPayment,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600)),
              SizedBox(height: 5),
              Text(AppStrings.balance, style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
