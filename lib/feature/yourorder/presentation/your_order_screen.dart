import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';

import 'widget/your_order_body.dart';

class YourOrderScreen extends StatefulWidget {
  YourOrderScreen({super.key});

  @override
  State<YourOrderScreen> createState() => _YourOrderScreenState();
}

class _YourOrderScreenState extends State<YourOrderScreen> {
  final PageController pageController = PageController();
  int _selectedIndex = 0; // Track the selected tab

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(AppStrings.order),
        titleTextStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
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
      body: Column(
        children: [
          // Custom Bottom TabBar
          Container(
            color: Colors.white,
            child: Row(
              children: [
                _buildTabItem(title: AppStrings.yourorder, index: 0),
                _buildTabItem(title: AppStrings.currentOrder, index: 1),
              ],
            ),
          ),

          // PageView
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const [YourOrderBody(), YourOrderBody()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem({required String title, required int index}) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _onTabTapped(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: _selectedIndex == index
                    ? AppColors.floatingercolor
                    : Colors.black,
              ),
            ),
            if (_selectedIndex == index)
              Container(
                height: 3,
                width: MediaQuery.of(context).size.width / 2,
                color: AppColors.floatingercolor,
              ),
          ],
        ),
      ),
    );
  }
}
