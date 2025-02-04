import 'package:flutter/material.dart';

import 'offer_card.dart';

class ListOfOffer extends StatelessWidget {
  const ListOfOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const OfferCard();
        },
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
