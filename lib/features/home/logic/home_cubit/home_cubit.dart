import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeCubitInitial());
  int index = 0;

  bool isSelected = false;
  String selectedMeal = "";

  void changeIndex(int newIndex) {
    index = newIndex;

    emit(NavigationBarIndex());
  }

}
