import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hubmaster/features/community/ui/community_screen.dart';
import 'package:hubmaster/features/forgotpassword/ui/forgot_password_view.dart';
import 'package:hubmaster/features/home/logic/home_cubit/home_cubit.dart';
import 'package:hubmaster/features/home/ui/home_view.dart';
import 'package:hubmaster/features/insight/logic/cubit/insight_cubit.dart';
import 'package:hubmaster/features/insight/ui/insight.dart';
import 'package:hubmaster/features/login/ui/login_view.dart';
import 'package:hubmaster/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:hubmaster/features/signup/ui/sign_up_view.dart';
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
  static const kLoginView = '/loginView';
  static const kHomeView = '/homeView';
  static const kSignUpView = '/signUpView';
  static const kForgotPassword = '/forgotPassword';
  static const kInsight = '/insight';
  static const kCommunity = '/community';
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
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => BlocProvider(
          create: (context) => HomeCubit(),
          child: HomeView(),
        ),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kForgotPassword,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kInsight,
        builder: (context, state) => BlocProvider(
          create: (context) => InsightCubit(),
          child: const Insight(),
        ),
      ),
      GoRoute(
        path: kCommunity,
        builder: (context, state) => BlocProvider(
          create: (context) => InsightCubit(),
          child: const CommunityScreen(),
        ),
      ),
    ],
  );
}
