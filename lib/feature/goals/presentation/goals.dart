import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_images.dart';
import 'package:maxap/core/widget/back_button.dart';

import '../../../core/strings/app_strings.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(AppStrings.yourgoals),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.goalsimage, height: 100),
            const SizedBox(height: 12),
            const Text(
              AppStrings.youhavenogoals,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            const SizedBox(height: 12),
            const Text(AppStrings.buymoregetgoals),
            const SizedBox(height: 12),
            const BackButtonWidget(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
