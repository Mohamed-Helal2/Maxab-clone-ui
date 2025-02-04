import 'package:flutter/material.dart';
import 'package:maxap/core/widget/custom_more_widget.dart';
import 'package:maxap/feature/goals/presentation/goals.dart';

import '../../../core/strings/app_strings.dart';
import 'widget/name.dart';
import 'widget/order_cupoen.dart';
import 'widget/version.dart';
import 'widget/wallet_widget.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
      child: Column(
        children: [
          const Name(),
          const SizedBox(height: 10),
          const OrderCupoen(),
          const SizedBox(height: 10),
          const WalletWidget(),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Goals(),
              ));
            },
            child: const CustomMoreWidget(
                text: AppStrings.goals, icon: Icons.auto_graph_outlined),
          ),
          const SizedBox(height: 10),
          const CustomMoreWidget(text: AppStrings.issue, icon: Icons.message),
          const SizedBox(height: 10),
          const CustomMoreWidget(text: AppStrings.setitngs, icon: Icons.settings),
          const Spacer(),
          const Version(),
        ],
      ),
    );
  }
}
