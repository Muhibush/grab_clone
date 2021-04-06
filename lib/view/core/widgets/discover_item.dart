import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grab_clone/view/page/dummy_page.dart';

class DiscoverItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DummyPage(
                      text: "Discover Item",
                    )));
      },
      child: Container(
        width: 486.w,
        height: 735.w,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.w),
              child: Image.asset(
                'assets/images/item.png',
                width: 486.w,
                height: 486.w,
              ),
            ),
            SizedBox(height: 34.w),
            Container(
              width: 486.w,
              height: 106.w,
              child: AutoSizeText(
                'Kejar diskon menawan buat puas seharian',
                maxLines: 2,
                minFontSize: 1,
                style: TextStyle(
                  fontSize: 45.sp,
                  color: Color(0xFF282828),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 16.w),
            Container(
                width: 486.w,
                height: 47.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/date@2x.png',
                      width: 34.w,
                      height: 34.w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 20.w),
                    AutoSizeText(
                      'Until 11 Apr',
                      maxLines: 1,
                      minFontSize: 1,
                      style: TextStyle(
                        fontSize: 35.sp,
                        color: Color(0xFF676767),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
