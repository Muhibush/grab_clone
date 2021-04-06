import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverInProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 55.w),
        Container(
          width: 1010.w,
          height: 503.w,
          padding: EdgeInsets.only(left: 48.w),
          decoration: BoxDecoration(
            color: Color(0xFFf7f7f7),
            borderRadius: BorderRadius.circular(10.w),
          ),
        ),
        SizedBox(height: 900.h),
      ],
    );
  }
}
