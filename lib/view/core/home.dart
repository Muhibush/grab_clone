import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_clone/view/core/widgets/discover.dart';
import 'package:grab_clone/view/core/widgets/features.dart';
import 'package:grab_clone/view/core/widgets/header.dart';
import 'package:grab_clone/view/core/widgets/savings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
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
