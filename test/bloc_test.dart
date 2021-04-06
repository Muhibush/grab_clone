import 'package:grab_clone/bloc/home_bloc.dart';
import 'package:grab_clone/bloc/main_page_cubit.dart';
import 'package:grab_clone/bloc/navbar_control_cubit.dart';
import 'package:grab_clone/bloc/status_bar_control_cubit.dart';
import 'package:grab_clone/models/discovery_model.dart';
import 'package:grab_clone/repository/discovery_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

class MockDiscoveryRepository extends Mock implements DiscoveryRepository {}

void main() {
  group('StatusBarControlCubit', () {
    StatusBarControlCubit statusBarControlCubit;

    setUp(() {
      statusBarControlCubit = StatusBarControlCubit();
    });

    test('initial state is 0', () {
      expect(statusBarControlCubit.state, 0);
    });

    blocTest(
      'emits 1.0 when setOpacity >= 1.0',
      build: () => statusBarControlCubit,
      act: (bloc) => bloc
        ..setOpacity(0.2)
        ..setOpacity(1.0)
        ..setOpacity(2.0)
        ..setOpacity(0.9)
        ..setOpacity(0.3),
      expect: () => [0.2, 1.0, 0.9, 0.3],
    );
  });

  group('NavbarControlCubit', () {
    NavbarControlCubit navbarControlCubit;

    setUp(() {
      navbarControlCubit = NavbarControlCubit();
    });

    test('initial state is true', () {
      expect(navbarControlCubit.state, true);
    });

    blocTest(
      'emits equal value from setVisibility',
      build: () => navbarControlCubit,
      act: (bloc) => bloc
        ..setVisibility(true)
        ..setVisibility(false)
        ..setVisibility(false)
        ..setVisibility(true)
        ..setVisibility(true)
        ..setVisibility(false),
      expect: () => [true, false, true, false],
    );
  });

  group('MainPageCubit', () {
    MainPageCubit mainPageCubit;

    setUp(() {
      mainPageCubit = MainPageCubit();
    });

    test('initial state is MainPageLoadInProgress()', () {
      expect(mainPageCubit.state, MainPageLoadInProgress());
    });

    blocTest(
      'emits equal value from setVisibility',
      build: () => mainPageCubit,
      act: (bloc) => bloc.startApp(),
      expect: () => [MainPageSuccess()],
    );
  });

  group('HomeBloc success', () {
    final mockDiscoveryRepository = MockDiscoveryRepository();
    final homeBloc = HomeBloc(mockDiscoveryRepository);
    final result = [DiscoveryModel(), DiscoveryModel()];

    test('initial state is HomeInitial()', () {
      expect(homeBloc.state, HomeInitial());
    });

    when(mockDiscoveryRepository.getDiscoveryList())
        .thenAnswer((realInvocation) async => result);

    blocTest(
      'emits HomeLoadSuccess when HomeStarted and HomeRefreshed success get data',
      build: () => homeBloc,
      act: (bloc) => bloc..add(HomeStarted())..add(HomeRefreshed()),
      expect: () => [
        HomeLoadInProgress(),
        HomeLoadSuccess(result),
        HomeLoadInProgress(),
        HomeLoadSuccess(result)
      ],
    );
  });

  group('HomeBloc failed', () {
    final mockDiscoveryRepository = MockDiscoveryRepository();
    final homeBloc = HomeBloc(mockDiscoveryRepository);

    when(mockDiscoveryRepository.getDiscoveryList())
        .thenAnswer((_) async => throw "error connection");

    blocTest(
      'emits HomeLoadSuccess when HomeStarted and HomeRefreshed failed get data',
      build: () => homeBloc,
      act: (bloc) => bloc..add(HomeStarted())..add(HomeRefreshed()),
      expect: () => [
        HomeLoadInProgress(),
        HomeLoadFailure(),
        HomeLoadInProgress(),
        HomeLoadFailure()
      ],
    );
  });
}
