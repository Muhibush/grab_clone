import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grab_clone/view/page/dummy_page.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0f65fa),
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => DummyPage(
                            text: "Buka Lazada Amanah",
                          )));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 60.w,
                  ),
                  width: 678.w,
                  height: 185.w,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        'Buka Lazada Amanah Sekarang',
                        maxLines: 2,
                        minFontSize: 1,
                        style: TextStyle(
                          fontSize: 50.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 614.w,
                            child: AutoSizeText(
                              'Kebutuhan Muslim Terpercaya ...',
                              maxLines: 1,
                              minFontSize: 1,
                              style: TextStyle(
                                fontSize: 42.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(width: 14.w),
                          Container(
                            width: 50.w,
                            height: 50.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF105de9)),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                              size: 45.w,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/lazada.png',
                  width: 280.w,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
