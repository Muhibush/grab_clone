import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_clone/view/core/dummy_tab.dart';
import 'package:grab_clone/view/core/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Core extends StatefulWidget {
  @override
  _CoreState createState() => _CoreState();
}

class _CoreState extends State<Core> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: DefaultTabController(
          initialIndex: 0,
          length: 5,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              TabBarView(
                children: [
                  Home(),
                  DummyTab(text: "Activity"),
                  DummyTab(text: "Payment"),
                  DummyTab(text: "Messages"),
                  DummyTab(text: "Account"),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(color: Color(0xFFeaeff2), width: 3.w))),
                child: TabBar(
                    unselectedLabelColor: Color(0xFF9a9a9a),
                    labelColor: Color(0xFF00b14f),
                    indicatorColor: Colors.transparent,
                    labelPadding: EdgeInsets.all(0),
                    labelStyle: TextStyle(fontSize: 34.sp),
                    tabs: <Tab>[
                      Tab(
                        icon: ImageIcon(AssetImage('assets/icons/home@2x.png')),
                        text: 'Home',
                      ),
                      Tab(
                        icon: ImageIcon(
                            AssetImage('assets/icons/activity@2x.png')),
                        text: 'Activity',
                      ),
                      Tab(
                        icon: ImageIcon(
                            AssetImage('assets/icons/payment@2x.png')),
                        text: 'Payment',
                      ),
                      Tab(
                        icon: ImageIcon(
                            AssetImage('assets/icons/messages@2x.png')),
                        text: 'Messages',
                      ),
                      Tab(
                        icon: ImageIcon(
                            AssetImage('assets/icons/account@2x.png')),
                        text: 'Account',
                      )
                    ]),
              ),
            ],
          ),
        ));
  }
}
