import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleCubit extends Cubit<List<bool>> {
  ToggleCubit() : super([]);
  void currentIndex(int index, int items) async {
    List<bool> result = List.generate(items, (index) => false);
    if (index != -1) {
      result[index] = true;
    }
    emit(result);
  }
}
