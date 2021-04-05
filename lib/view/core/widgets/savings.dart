import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Savings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 56.w),
          width: 537.w,
          height: 173.w,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 6.w, color: Color(0xFFf7f7f7)),
                right: BorderSide(width: 3.w, color: Color(0xFFf7f7f7)),
              )),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/ovo_with_border@2x.png',
                width: 78.w,
                height: 78.w,
              ),
              SizedBox(width: 22.w),
              Container(
                height: 50.w,
                // color: Colors.red.shade50,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Rp',
                        style: TextStyle(
                          fontSize: 32.sp,
                          color: Color(0xFFa9acad),
                        ),
                      ),
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                          fontSize: 42.sp,
                          color: Color(0xFF1c1c1c),
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFFbdc1c1),
                      size: 50.w,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 56.w),
          width: 537.w,
          height: 173.w,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 6.w, color: Color(0xFFf7f7f7)),
                left: BorderSide(width: 3.w, color: Color(0xFFf7f7f7)),
              )),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/points_with_border@2x.png',
                width: 78.w,
                height: 78.w,
              ),
              SizedBox(width: 22.w),
              Container(
                height: 50.w,
                // color: Colors.red.shade50,
                child: Row(
                  children: [
                    Text(
                      '6,177 Points',
                      style: TextStyle(
                          fontSize: 42.sp,
                          color: Color(0xFF1c1c1c),
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFFbdc1c1),
                      size: 50.w,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
