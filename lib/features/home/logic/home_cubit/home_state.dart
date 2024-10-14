part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeCubitInitial extends HomeState {}

final class NavigationBarIndex extends HomeState {}
final class SetMeal extends HomeState {}
