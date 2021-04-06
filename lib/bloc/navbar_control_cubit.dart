import 'package:bloc/bloc.dart';

class NavbarControlCubit extends Cubit<bool> {
  NavbarControlCubit() : super(true);

  void setVisibility(bool isVisible) {
    emit(isVisible);
  }
}
