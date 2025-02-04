import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import '../../../core/widget/back_button.dart';
import 'widget/condition_widget.dart';
import 'widget/offer_card.dart';

class OfferDetailsScreen extends StatelessWidget {
  const OfferDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(AppStrings.offerdetails),
        titleTextStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: const Padding(
       padding:   EdgeInsets.all(8),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OfferdetailsCard(),
            SizedBox(height: 10),
            ConditionWidget(),
             SizedBox(height: 20),
            BackButtonWidget(),
            
          ],
        ),
      ),
    );
  }
}
