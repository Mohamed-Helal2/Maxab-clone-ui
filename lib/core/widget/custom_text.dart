import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text,this.alignment});
  final String text;
  final AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment:alignment?? AlignmentDirectional.topEnd,
        child: Text(text,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
