import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grab_clone/view/core/widgets/features.dart';
import 'file:///D:/lab/grab_clone/lib/view/core/widgets/header.dart';
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
        SizedBox(
          height: 49.w,
        ),
        Container(
          color: Colors.green,
          height: 490.w,
          width: 1.sw,
        ),
        SizedBox(
          height: 49.w,
        ),
        Container(
          color: Colors.transparent,
          height: 490.w,
          width: 1.sw,
        ),
        SizedBox(
          height: 49.w,
        ),
        Container(
          color: Color(0xFF0f65fa),
          height: 490.w,
          width: 1.sw,
        ),
        SizedBox(
          height: 49.w,
        ),
        Container(
          color: Colors.red,
          height: 490.w,
          width: 1.sw,
        ),
        SizedBox(
          height: 49.w,
        ),
        Container(
          color: Colors.green,
          height: 490.w,
          width: 1.sw,
        ),
        SizedBox(
          height: 49.w,
        ),
        Container(
          color: Colors.yellow,
          height: 490.w,
          width: 1.sw,
        ),
        SizedBox(
          height: 49.w,
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
