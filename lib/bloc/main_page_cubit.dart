import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(MainPageLoadInProgress());

  Future<void> startApp() async {
    await Future.delayed(Duration(seconds: 3));
    emit(MainPageSuccess());
  }
}
