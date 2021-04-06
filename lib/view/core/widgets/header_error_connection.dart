import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grab_clone/view/page/dummy_page.dart';

class HeaderErrorConnection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFfff1f1),
      height: 491.w,
      width: 1.sw,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 109.w, left: 40.w, right: 40.w),
            width: 1000.w,
            height: 116.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DummyPage(
                                  text: "QR",
                                )));
                  },
                  child: Container(
                    width: 120.w,
                    height: 116.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFf7f7f7),
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(10.w)),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/icons/qr@2x.png',
                      width: 58.w,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Image.asset('assets/icons/search@2x.png', width: 45.w),
                SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DummyPage(
                                  text: "Search",
                                )));
                  },
                  child: Container(
                    width: 755.w,
                    height: 116.w,
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      'Offers, food, and places to go',
                      maxLines: 1,
                      minFontSize: 1,
                      style:
                          TextStyle(fontSize: 45.sp, color: Color(0xFF9a9a9a)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 266.w,
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 60.w,
                  ),
                  width: 777.w,
                  height: 185.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        'No Connection Found',
                        maxLines: 2,
                        minFontSize: 1,
                        style: TextStyle(
                          fontSize: 55.sp,
                          color: Color(0xFFa22916),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      AutoSizeText(
                        'Please check your network connection.',
                        maxLines: 2,
                        minFontSize: 1,
                        style: TextStyle(
                          fontSize: 42.sp,
                          color: Color(0xFFa22916),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/icons/connection_error@2x.png',
                  width: 162.w,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  width: 81.w,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
