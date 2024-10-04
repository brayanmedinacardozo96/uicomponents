import 'package:flutter_bloc/flutter_bloc.dart';

class ZoomCubit extends Cubit<double> {
  ZoomCubit() : super(1.0);

  void zoomIn() => emit(1.2);

  void zoomOut() => emit(1.0);
}
