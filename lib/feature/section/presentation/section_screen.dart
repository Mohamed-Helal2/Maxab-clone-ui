import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/widget/show_section_widget.dart';
import 'package:maxap/core/widget/title_widget.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: titlewidget(title: AppStrings.section),
              ),
            ),
            // const ShowSection(),
            const ShowSectionWidget(),
          ],
        ),
      )),
    );
  }
}
