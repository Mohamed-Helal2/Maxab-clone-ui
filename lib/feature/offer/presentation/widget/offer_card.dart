import 'package:flutter/material.dart';
import 'package:maxap/feature/offer/presentation/widget/date_offer.dart';
import 'package:maxap/core/widget/offrt_text.dart';

import '../../../../core/widget/image_offer.dart';
import 'offer_button.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    super.key,
  });

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
            DateOffer(),
            SizedBox(height: 8),
            ImageOffer(),
            SizedBox(height: 8),
            OffrtText(),
            SizedBox(height: 16),
            OfferButton(),
          ],
        ),
      ),
    );
  }
}
