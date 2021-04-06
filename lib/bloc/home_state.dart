part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoadInProgress extends HomeState {}

class HomeLoadSuccess extends HomeState {
  final List<DiscoveryModel> discoveries;

  HomeLoadSuccess(this.discoveries);

  @override
  List<Object> get props => [this.discoveries];
}

class HomeLoadFailure extends HomeState {}
