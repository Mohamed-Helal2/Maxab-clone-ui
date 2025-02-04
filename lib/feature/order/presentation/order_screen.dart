import 'package:flutter/material.dart';
import 'package:maxap/core/widget/custom_text.dart';

import '../../../core/strings/app_strings.dart';
import 'widget/banner.dart';
import '../../../core/widget/floating_button.dart';
import 'widget/logo.dart';
import 'widget/search.dart';
import 'widget/shortcut.dart';
import '../../../core/widget/show_section_widget.dart';
import 'widget/strong_offer.dart';
import 'widget/strong_offer_widget.dart';
import 'widget/warning.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingButton(),
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Logo(),
              SizedBox(height: 10),
              Search(),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Warning(),
                      SizedBox(height: 10),
                      CustomText(text: AppStrings.maxabservice),
                      SizedBox(height: 10),
                      BannerWidget(),
                      SizedBox(height: 10),
                      CustomText(text: AppStrings.shotrcut),
                      SizedBox(height: 10),
                      // اختصارات
                      Shortcut(),
                      SizedBox(height: 10),
                      // أقوي العروض
                      StrongOffer(),
                      SizedBox(height: 10),
                      HorizontalStrongOfferList(),
                      SizedBox(height: 10),

                      // تصفح الأقسام
                      CustomText(text: AppStrings.showsection),
                      SizedBox(height: 10),
                      ShowSectionWidget(),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
