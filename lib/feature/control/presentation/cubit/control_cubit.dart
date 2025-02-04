import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'control_state.dart';

class ControlCubit extends Cubit<ControlState> {
  ControlCubit() : super(ControlInitial());

  final List<GlobalKey<NavigatorState>> navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  int selectedIndex = 3;
  final List<int> navigationStack = [3];

  void changeSelectedValue(int selectedValue) {
    if (selectedIndex != selectedValue) {
      navigationStack.add(selectedValue);
      selectedIndex = selectedValue;
      emit(NavigateState(navigate: selectedIndex));
    }
  }

  bool onBackPressed() {
    final canPop = navigatorKeys[selectedIndex].currentState?.canPop() ?? false;
    if (canPop) {
      navigatorKeys[selectedIndex].currentState?.pop();
      return false;
    }

    if (navigationStack.length > 1) {
      navigationStack.removeLast();
      selectedIndex = navigationStack.last;
      emit(NavigateState(navigate: selectedIndex));
      return false;
    }

    return true;
  }
}
