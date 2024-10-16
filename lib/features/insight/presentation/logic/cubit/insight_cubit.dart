import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'insight_state.dart';

class InsightCubit extends Cubit<InsightState> {
  InsightCubit() : super(InsightInitial());
 
}
