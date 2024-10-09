import 'package:go_router/go_router.dart';
import 'package:hubmaster/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:hubmaster/features/user_infos/ui/activity_level_selection.dart';
import 'package:hubmaster/features/user_infos/ui/age_selection.dart';
import 'package:hubmaster/features/user_infos/ui/goal_selection.dart';
import 'package:hubmaster/features/user_infos/ui/height_selection.dart';
import 'package:hubmaster/features/user_infos/ui/weight_options.dart';
import 'package:hubmaster/features/user_infos/ui/gender_selection_screen.dart';

abstract class AppRouter {
  static const kGenderSelection = '/genderSelection';
  static const kWeightSelection = '/weightSelection';
  static const kAgeSelection = '/ageSelection';
  static const kHeightSelection = '/heightSelection';
  static const kGoalSeleciton = '/goalSeleciton';
  static const kActivitySelection = '/activitySelection';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => OnBoardingScreen(),
      ),
      GoRoute(
        path: kGenderSelection,
        builder: (context, state) => const GenderSelectionScreen(),
      ),
      GoRoute(
        path: kWeightSelection,
        builder: (context, state) => const WeightSelection(),
      ),
      GoRoute(
        path: kAgeSelection,
        builder: (context, state) => const AgeSelection(),
      ),
      GoRoute(
        path: kHeightSelection,
        builder: (context, state) => const HeightSelection(),
      ),
      GoRoute(
        path: kGoalSeleciton,
        builder: (context, state) => const GoalSelection(),
      ),
      GoRoute(
        path: kActivitySelection,
        builder: (context, state) => const ActivitySelection(),
      ),
    ],
  );
}
