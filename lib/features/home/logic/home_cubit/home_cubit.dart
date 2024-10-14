import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeCubitInitial());
  int index = 0;
  String selectedMeal = '';

  void changeIndex(int newIndex) {
    index = newIndex;

    emit(NavigationBarIndex());
  }
  void setMeal(String meal){
    selectedMeal = meal;
    emit(SetMeal());
  }


}
