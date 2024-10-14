import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/home/logic/home_cubit/home_cubit.dart';
import 'package:hubmaster/features/home/ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:hubmaster/features/home/ui/widgets/home_view_body.dart';
import 'package:hubmaster/features/insight/ui/insight.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  List<Widget> pages = [
    const HomeViewBody(),
    const Insight(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
        
        },
        builder: (context, state) {
          return Scaffold(
              
              body:pages[context.read<HomeCubit>().index],
              bottomNavigationBar: const CustomBottomNavigationBar(),
            );
        },
      ),
    );
  }
}
