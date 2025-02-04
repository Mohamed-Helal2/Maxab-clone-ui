import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_images.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/feature/cupoean/presentation/cupoean_screen.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../yourorder/presentation/your_order_screen.dart';

class OrderCupoen extends StatelessWidget {
  const OrderCupoen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        order_cupoens_widget(
          image: AppImages.discounttimage,
          text: AppStrings.discoutcupoean,
          onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>    CupoeanScreen()));
          },
        ),
        const SizedBox(width: 20),
        order_cupoens_widget(
            image: AppImages.cartimage,
            text: AppStrings.yourorder,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>   YourOrderScreen()));
            }),
      ],
    );
  }
}

class order_cupoens_widget extends StatelessWidget {
  const order_cupoens_widget(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});
  final String image;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.morebordercolor, width: 1.5),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(image, height: 40),
              const SizedBox(height: 10),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 18, color: AppColors.moretextcolor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
