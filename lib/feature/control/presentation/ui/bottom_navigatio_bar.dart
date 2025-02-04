 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxap/core/theme/app_colors.dart';
import 'package:maxap/feature/control/presentation/cubit/control_cubit.dart';

class BottomNavigatioBar extends StatelessWidget {
  const BottomNavigatioBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ControlCubit, ControlState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: context.read<ControlCubit>().selectedIndex,
          selectedItemColor: AppColors.selectednavrcolor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          onTap: (value) {
            context.read<ControlCubit>().changeSelectedValue(value);
          },
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.menu, size: 28), label: "المزيد"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer, size: 28), label: "العروض"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view, size: 28), label: "الأقسام"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 28), label: "طلبات"),
          ],
        );
      },
    );
  }
}