import 'package:flutter/material.dart';
import 'package:maxap/core/theme/app_colors.dart';
import 'package:maxap/feature/offerdetails/presentation/offer_details_screen.dart';

import '../../../../core/strings/app_images.dart';
import '../../../../core/strings/app_strings.dart';

class StrongOfferWidget extends StatelessWidget {
  const StrongOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: AppColors.strongoffercolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // products
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: const Text(
                  AppStrings.products,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              // discount
              const Text(
                AppStrings.discount,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const SizedBox(height: 2),
              const Text(
                AppStrings.discountcondition,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
                child: const Text(
                  AppStrings.viewoffer,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          const SizedBox(width: 10),
          Image.asset(AppImages.products, height: 50),
        ],
      ),
    );
  }
}

class HorizontalStrongOfferList extends StatelessWidget {
  const HorizontalStrongOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> allitem = [
      const StrongOfferWidget(),
      const StrongOfferWidget(),
      const StrongOfferWidget(),
    ];
    return Container(
      padding: const EdgeInsets.only(right: 15),
      height: 125,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(width: 20);
          },
          itemCount: allitem.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OfferDetailsScreen()));
                },
                child: allitem[index]);
          },
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
