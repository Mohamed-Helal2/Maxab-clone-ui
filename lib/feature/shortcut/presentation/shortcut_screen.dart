import 'package:flutter/material.dart';
import 'package:maxap/core/widget/floating_button.dart';

class ShortcutScreen extends StatelessWidget {
  const ShortcutScreen({
    super.key,
    required this.title,
    required this.image,
    required this.text,
  });

  final String title;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingButton(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(title),
        titleTextStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward,
                color: Colors.black), 
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 150),
            const SizedBox(height: 15),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
