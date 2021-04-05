import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Container(
            color: Color(0xFF0f65fa),
            height: 490.w,
            width: 1.sw,
          ),
          SizedBox(
            height: 49.w,
          ),
          Row(
            children: [
              SizedBox(width: 22.w),
              Image.asset('assets/icons/grab@2x.png',width: 28.w,height: 23.w),
              SizedBox(width: 4.w),
              Text('1NFT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.sp),),
              Spacer(),
              Container(
                width: 225.w,
                height: 48.w,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.white,width: 3.w),
                    borderRadius: BorderRadius.all(Radius.circular(25.w))
                ),
              ),
              SizedBox(width: 22.w),
            ],
          ),
        ],
      ),
    );
  }
}
