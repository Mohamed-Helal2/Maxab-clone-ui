import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_images.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.only(right: 15),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Image.asset(AppImages.logo, height: 30)),
    );
  }
}
