import '../interface/dialog_interface.dart';

class RouterDialog {
  final String name;
  final DialogBuilder builder;

  RouterDialog({required this.name, required this.builder});
}
