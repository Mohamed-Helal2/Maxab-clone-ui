import 'package:flutter/material.dart';
import 'package:maxap/core/widget/custom_more_widget.dart';

import '../../../../core/strings/app_strings.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomMoreWidget(text: AppStrings.wallet, icon: Icons.wallet);
  }
}
