import 'package:flutter/material.dart';
 
class titlewidget extends StatelessWidget {
  const titlewidget({
    super.key,
    required this.title
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
     title,
      style: const TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}