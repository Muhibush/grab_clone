import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grab_clone/bloc/navbar_control_cubit.dart';
import 'package:grab_clone/view/core/widgets/discover.dart';
import 'package:grab_clone/view/core/widgets/features.dart';
import 'package:grab_clone/view/core/widgets/header.dart';
import 'package:grab_clone/view/core/widgets/savings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  ScrollController _scrollController;
  bool isVisible;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
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
    return ListView(
      controller: _scrollController,
      padding: const EdgeInsets.all(0),
      children: [
        Header(),
        Savings(),
        Features(),
        Discover(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
