import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grab_clone/view/core/widgets/feature_item.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 775.w,
      width: 1.sw,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 6.w, color: Color(0xFFf7f7f7)),
      )),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 36.w, bottom: 60.w),
            child: Material(
              elevation: 8.w,
              shadowColor: Color(0xFFf7f7f7),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              child: Container(
                height: 122.w,
                width: 442.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.w)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/wallet@2x.png', width: 55.w),
                    SizedBox(width: 24.w),
                    Container(
                      width: 296.w,
                      child: AutoSizeText.rich(
                        TextSpan(
                          text: 'Top Up · ',
                          style: TextStyle(
                              fontSize: 45.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: <TextSpan>[
                            new TextSpan(
                              text: 'Wallet',
                              style: TextStyle(
                                  fontSize: 45.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        minFontSize: 0,
                        maxLines: 1,
                        stepGranularity: 0.1,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Wrap(
            children: [
              FeatureItem(
                text: 'Food',
                asset: 'assets/icons/food@2x.png',
              ),
              FeatureItem(
                text: 'Mart',
                asset: 'assets/icons/mart@2x.png',
              ),
              FeatureItem(
                text: 'Express',
                asset: 'assets/icons/express@2x.png',
              ),
              FeatureItem(
                text: 'Packages',
                asset: 'assets/icons/packages@2x.png',
              ),
              FeatureItem(
                text: 'Car',
                asset: 'assets/icons/car@2x.png',
              ),
              FeatureItem(
                text: 'Bike',
                asset: 'assets/icons/bike@2x.png',
              ),
              FeatureItem(
                text: 'Pulsa/Token',
                asset: 'assets/icons/pulsa@2x.png',
              ),
              FeatureItem(
                text: 'More',
                asset: 'assets/icons/more@2x.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
