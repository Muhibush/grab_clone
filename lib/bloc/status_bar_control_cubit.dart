import 'package:bloc/bloc.dart';

class StatusBarControlCubit extends Cubit<double> {
  StatusBarControlCubit() : super(0);

  void setOpacity(double opacity) {
    if (opacity >= 1) opacity = 1;
    emit(opacity);
  }
}
