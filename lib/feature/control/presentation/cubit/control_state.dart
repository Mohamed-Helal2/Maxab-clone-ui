part of 'control_cubit.dart';

@immutable
sealed class ControlState {}

final class ControlInitial extends ControlState {}

final class NavigateState extends ControlState {
    final int navigate;
  NavigateState({required this.navigate});
}

