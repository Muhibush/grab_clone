import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grab_clone/models/discovery_model.dart';
import 'package:grab_clone/repository/discovery_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DiscoveryRepository _discoveryRepository;

  HomeBloc(this._discoveryRepository) : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is HomeStarted) {
      yield HomeLoadInProgress();
      try {
        List<DiscoveryModel> discoveries = [];
        discoveries = await _discoveryRepository.getDiscoveryList();
        yield HomeLoadSuccess(discoveries);
      } catch (e) {
        yield HomeLoadFailure();
      }
    }
    if (event is HomeRefreshed) {
      yield HomeLoadInProgress();
      try {
        List<DiscoveryModel> discoveries = [];
        discoveries = await _discoveryRepository.getDiscoveryList();
        yield HomeLoadSuccess(discoveries);
      } catch (e) {
        yield HomeLoadFailure();
      }
    }
  }
}
