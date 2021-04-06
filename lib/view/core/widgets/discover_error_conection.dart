import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverErrorConnection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 55.w),
        Container(
          width: 1010.w,
          height: 185.w,
          padding: EdgeInsets.only(left: 48.w),
          decoration: BoxDecoration(
            color: Color(0xFFf7f7f7),
            borderRadius: BorderRadius.circular(10.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                'Nothing here for now',
                maxLines: 1,
                minFontSize: 1,
                style: TextStyle(
                  fontSize: 43.sp,
                  color: Color(0xFF1c1c1c),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 14.w,
              ),
              AutoSizeText(
                'You can still try our services.',
                maxLines: 1,
                minFontSize: 1,
                style: TextStyle(
                  fontSize: 40.sp,
                  color: Color(0xFF1c1c1c),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 900.h),
      ],
    );
  }
}
