import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00b14f),
      body: Column(
        children: [
          Expanded(child: Container(),flex: 5),
          Image.asset('assets/icons/grab@2x.png',width: 400.w,height: 150.w),
          Expanded(child: Container(),flex: 2),
          Image.asset('assets/images/splash_screen.png',width: 1.sw,height: 695.w,fit: BoxFit.cover),
        ],
      ),
    );
  }
}
