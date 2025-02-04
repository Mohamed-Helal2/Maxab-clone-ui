
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxap/feature/control/presentation/ui/bottom_navigatio_bar.dart';
import '../cubit/control_cubit.dart';
import '../../../more/presentation/more_screen.dart';
import '../../../offer/presentation/offer_screen.dart';
import '../../../section/presentation/section_screen.dart';
import '../../../order/presentation/order_screen.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return context.read<ControlCubit>().onBackPressed();
      },
      child: Scaffold(
        bottomNavigationBar: const BottomNavigatioBar(),
        body: BlocBuilder<ControlCubit, ControlState>(
          builder: (context, state) {
            return IndexedStack(
              index: context.read<ControlCubit>().selectedIndex,
              children: [
                Navigator(
                  key: context.read<ControlCubit>().navigatorKeys[0],
                  onGenerateRoute: (routeSettings) {
                    return MaterialPageRoute(
                      builder: (context) => const MoreScreen(),
                    );
                  },
                ),
                Navigator(
                  key: context.read<ControlCubit>().navigatorKeys[1],
                  onGenerateRoute: (routeSettings) {
                    return MaterialPageRoute(
                      builder: (context) => const OfferScreen(),
                    );
                  },
                ),
                Navigator(
                  key: context.read<ControlCubit>().navigatorKeys[2],
                  onGenerateRoute: (routeSettings) {
                    return MaterialPageRoute(
                      builder: (context) => const SectionScreen(),
                    );
                  },
                ),
                Navigator(
                  key: context.read<ControlCubit>().navigatorKeys[3],
                  onGenerateRoute: (routeSettings) {
                    return MaterialPageRoute(
                      builder: (context) => const OrderScreen(),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
