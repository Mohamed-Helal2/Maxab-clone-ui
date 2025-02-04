import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxap/core/strings/app_strings.dart';
import 'package:maxap/core/theme/app_colors.dart';
import 'package:maxap/feature/control/presentation/cubit/control_cubit.dart';
import 'package:maxap/feature/control/presentation/ui/control_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.backgroundcolor,
            fontFamily: AppStrings.fontfamily),
        home: BlocProvider<ControlCubit>(
          create: (context) => ControlCubit(),
          child: const ControlScreen(),
        ));
  }
}
