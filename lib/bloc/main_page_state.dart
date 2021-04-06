part of 'main_page_cubit.dart';

abstract class MainPageState extends Equatable {
  const MainPageState();
  @override
  List<Object> get props => [];
}

class MainPageLoadInProgress extends MainPageState {}

class MainPageSuccess extends MainPageState {}
