import 'package:flutter/material.dart';

class CustomShortcutWidget extends StatelessWidget {
  const CustomShortcutWidget(
      {super.key,
      required this.color,
      required this.bordercolor,
      required this.text1,
      required this.text2,
      required this.image});
  final Color color;
  final Color bordercolor;
  final String text1;
  final String text2;

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: bordercolor, width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 40),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(text1,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w800)),
              Text(text2,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w800)),
            ],
          ),
        ],
      ),
    );
  }
}
