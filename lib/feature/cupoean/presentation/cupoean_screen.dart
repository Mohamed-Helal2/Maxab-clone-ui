import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/feature/cupoean/presentation/widget/head.dart';
import 'package:maxap/feature/cupoean/presentation/widget/no_cupon_widget.dart';

import 'widget/welcomt_cupon_widget.dart';

class CupoeanScreen extends StatefulWidget {
  CupoeanScreen({super.key});

  @override
  State<CupoeanScreen> createState() => _CupoeanScreenState();
}

class _CupoeanScreenState extends State<CupoeanScreen> {
  final PageController pageController = PageController();
 int _selectedIndex = 0; // To track the selected tab

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        const  WelcomtCuponWidget(),
          const SizedBox(height: 5),
            HeadWidget(index: _selectedIndex),
          Expanded(
              child: PageView(
            controller: pageController,
            reverse: true,
            onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            children: const [
               NoCuponWidget(
                nocupoen: AppStrings.noCupoeanNow,
                noused: AppStrings.cupoeanused,
              ),
              NoCuponWidget(
                nocupoen: AppStrings.noCupoeanNow1,
                noused: AppStrings.cupoeanused1,
              ),
             
            ],
          ))
        ],
      ),
    );
  }
}
