import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grab_clone/view/core/widgets/discover_item.dart';
import 'package:grab_clone/view/page/dummy_page.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 55.w),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => DummyPage(
                          text: "Lazada Ramadhan Sale!",
                        )));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.w),
            child: Image.asset(
              'assets/images/lazada_banner.png',
              width: 1010.w,
              height: 503.w,
            ),
          ),
        ),
        SizedBox(height: 25.w),
        Container(
          width: 1010.w,
          child: AutoSizeText(
            'Diskon s.d. 90% di Lazada Ramadhan Sale!',
            maxLines: 2,
            minFontSize: 1,
            style: TextStyle(
              fontSize: 45.sp,
              color: Color(0xFF282828),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 18.w),
        Container(
          width: 1010.w,
          child: AutoSizeText(
            'Sponsored by Lazada',
            maxLines: 1,
            minFontSize: 1,
            style: TextStyle(
              fontSize: 38.sp,
              color: Color(0xFF676767),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 104.w),
        Container(
          width: 1010.w,
          child: AutoSizeText(
            'Keep discovering',
            maxLines: 1,
            minFontSize: 1,
            style: TextStyle(
              fontSize: 58.sp,
              color: Color(0xFF3d3d3d),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 54.w),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 36.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 486 / 735,
              crossAxisSpacing: 36.w,
              mainAxisSpacing: 0),
          itemCount: 12,
          itemBuilder: (context, index) {
            return DiscoverItem();
          },
        ),
        Container(
          width: 1010.w,
          height: 170.w,
          alignment: Alignment.center,
          child: AutoSizeText(
            "That's all for now!",
            maxLines: 1,
            minFontSize: 1,
            style: TextStyle(
              fontSize: 35.sp,
              color: Color(0xFF676767),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
