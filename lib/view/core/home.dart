import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grab_clone/bloc/home_bloc.dart';
import 'package:grab_clone/bloc/navbar_control_cubit.dart';
import 'package:grab_clone/bloc/status_bar_control_cubit.dart';
import 'package:grab_clone/view/core/widgets/discover.dart';
import 'package:grab_clone/view/core/widgets/discover_error_conection.dart';
import 'package:grab_clone/view/core/widgets/discover_in_progress.dart';
import 'package:grab_clone/view/core/widgets/features.dart';
import 'package:grab_clone/view/core/widgets/header.dart';
import 'package:grab_clone/view/core/widgets/header_error_connection.dart';
import 'package:grab_clone/view/core/widgets/header_in_progress.dart';
import 'package:grab_clone/view/core/widgets/savings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  ScrollController _scrollController;
  bool isVisible;
  Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _refreshCompleter = Completer<void>();
    isVisible = true;
    _scrollController.addListener(() {
      if (isVisible &&
          _scrollController.position.userScrollDirection ==
              ScrollDirection.reverse) {
        isVisible = false;
        BlocProvider.of<NavbarControlCubit>(context).setVisibility(isVisible);
      }
      if (!isVisible &&
          _scrollController.position.userScrollDirection ==
              ScrollDirection.forward) {
        isVisible = true;
        BlocProvider.of<NavbarControlCubit>(context).setVisibility(isVisible);
      }

      BlocProvider.of<StatusBarControlCubit>(context)
          .setOpacity(_scrollController.position.pixels / 109.w);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator(
      onRefresh: () {
        BlocProvider.of<HomeBloc>(context).add(HomeRefreshed());
        return _refreshCompleter.future;
      },
      child: ListView(
        controller: _scrollController,
        padding: const EdgeInsets.all(0),
        children: [
          BlocConsumer<HomeBloc, HomeState>(listener: (context, state) {
            if (state is HomeLoadSuccess || state is HomeLoadFailure) {
              _refreshCompleter?.complete();
              _refreshCompleter = Completer();
            }
          }, builder: (context, state) {
            Widget result = Container();

            if (state is HomeLoadInProgress) result = HeaderInProgress();
            if (state is HomeLoadSuccess) result = Header();
            if (state is HomeLoadFailure) result = HeaderErrorConnection();

            return result;
          }),
          Savings(),
          Features(),
          BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            Widget result = Container();

            if (state is HomeLoadInProgress) result = DiscoverInProgress();
            if (state is HomeLoadSuccess)
              result = Discover(
                discoveries: state.discoveries,
              );
            if (state is HomeLoadFailure) result = DiscoverErrorConnection();

            return result;
          }),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
