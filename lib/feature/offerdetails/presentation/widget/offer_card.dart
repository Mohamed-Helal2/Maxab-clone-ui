import 'package:flutter/material.dart';
import '../../../../core/widget/image_offer.dart';
import '../../../../core/widget/offrt_text.dart';
import 'text_condition.dart';

class OfferdetailsCard extends StatelessWidget {
  const OfferdetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.only(bottom: 16),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OffrtText(),
            SizedBox(height: 8),
            ImageOffer(),
            SizedBox(height: 16),
            TextCondition(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
