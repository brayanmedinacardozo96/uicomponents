import 'package:flutter_bloc/flutter_bloc.dart';

class YesNotCubit extends Cubit<bool> {
  YesNotCubit() : super(false);

  void notSee() => emit(false);

  void yesSee() => emit(true);
}
