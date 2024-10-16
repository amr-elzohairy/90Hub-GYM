import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeCubitInitial());
  int index = 0;

  bool isSelected = false;
  bool isSelectedtwo = false;
  bool isSelectedthree = false;
  String selectedMeal = "";

  void changeIndex(int newIndex) {
    index = newIndex;

    emit(NavigationBarIndex());
  }

  void changeColor(String meal) {
    if (meal == "Breakfast") {
      isSelected = true;
      isSelectedthree = false;
      isSelectedtwo = false;
    } else if (meal == "Lunch") {
      isSelected = false;
      isSelectedthree = false;
      isSelectedtwo = true;
    } else {
      isSelected = false;
      isSelectedthree = true;
      isSelectedtwo = false;
    }
    emit(ColorChanged());
  }
}
