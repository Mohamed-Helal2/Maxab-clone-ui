import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_images.dart';
 
class NoCuponWidget extends StatelessWidget {
  const NoCuponWidget(
      {super.key, required this.nocupoen, required this.noused});
  final String nocupoen;
  final String noused;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.voucherimage, height: 110),
        const SizedBox(height: 20),
        Text(nocupoen,
            style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text(noused,
            style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(1),
                fontWeight: FontWeight.w500))
      ],
    );
  }
}
