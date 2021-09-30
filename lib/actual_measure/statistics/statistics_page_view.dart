import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/statistics/empty_page.dart';
import 'package:pulse_app/actual_measure/statistics/statistics_page.dart';

class StatisticsPageView extends StatefulWidget {
  const StatisticsPageView({Key? key}) : super(key: key);

  @override
  _StatisticsPageViewState createState() => _StatisticsPageViewState();
}

class _StatisticsPageViewState extends State<StatisticsPageView> {
  PageController _pageController = PageController(initialPage: 0);
  List<Widget> pages = [EmptyPage(),StatisticsPage(),];
  bool scrollable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          onPageChanged: (int index) {
            setState(() {
            });
          },
          controller: _pageController,
          children: pages,
        ),
      ),
    );
  }
}
