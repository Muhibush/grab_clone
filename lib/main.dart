import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grab_clone/bloc/home_bloc.dart';
import 'package:grab_clone/bloc/main_page_cubit.dart';
import 'package:grab_clone/bloc/navbar_control_cubit.dart';
import 'package:grab_clone/bloc/status_bar_control_cubit.dart';
import 'package:grab_clone/repository/discovery_repository.dart';
import 'package:grab_clone/view/core/core.dart';
import 'package:grab_clone/view/page/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  runApp(BlocProvider(
    create: (_) => MainPageCubit()..startApp(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1080, 1920),
        allowFontScaling: false,
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.green,
              ),
              home: BlocBuilder<MainPageCubit, MainPageState>(
                  builder: (context, state) {
                if (state is MainPageLoaded) return SplashScreen();
                if (state is MainPageSuccess)
                  return MultiBlocProvider(providers: [
                    BlocProvider<NavbarControlCubit>(
                      create: (BuildContext context) => NavbarControlCubit(),
                    ),
                    BlocProvider<StatusBarControlCubit>(
                      create: (BuildContext context) => StatusBarControlCubit(),
                    ),
                    BlocProvider<HomeBloc>(
                      create: (BuildContext context) =>
                          HomeBloc(DiscoveryRepository())..add(HomeStarted()),
                    ),
                  ], child: Core());
                return Container();
              }),
            ));
  }
}
