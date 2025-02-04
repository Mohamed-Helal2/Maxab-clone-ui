import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/widget/custom_text.dart';
import 'package:maxap/feature/offer/presentation/widget/list_of_offer.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
        padding: const EdgeInsets.only(top: 30,right: 10,left: 10),
        child: Column(
          children: [
            CustomText(
                        text: AppStrings.offer,
                        alignment: Alignment.center,
                      ),
            SizedBox(height: 10),
            ListOfOffer(),
          ],
        ),
      )
      ),
    );

    
    
  }
}
