import 'package:flutter/material.dart';
import 'package:phish_defender/core/colors.dart';
import 'package:phish_defender/core/textstyle.dart';
import 'package:phish_defender/presentation/Home/Widgets/homescreenwidget.dart';
import 'package:phish_defender/presentation/Home/Widgets/userawareness.dart';

class HomeScreen extends StatelessWidget {
  static const routename = "home-screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //top tabs
              TabBar(
                isScrollable: true,
                dividerColor: ktransparent,
                padding: const EdgeInsets.all(50),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: kwhite,
                ),
                labelColor: kblack,
                unselectedLabelColor: kgrey,
                labelStyle: tabbartext,
                tabAlignment: TabAlignment.center,
                tabs: const [
                  Tab(
                    text: "👨‍✈️ User Awareness",
                  ),
                  Tab(
                    text: "🪝 check",
                  ),
                ],
              ),
              //pages on tabbar view
              const Expanded(
                child: TabBarView(
                  children: [
                    UserAwareness(),
                    HomeButtonandTextfield(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
