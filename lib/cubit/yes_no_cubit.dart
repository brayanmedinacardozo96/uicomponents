import 'package:flutter_bloc/flutter_bloc.dart';

class YesNoCubit extends Cubit<bool> {
  YesNoCubit() : super(false);
  void set(isSeledted) async {
    emit(isSeledted);
  }
}
