import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/statistics/empty_statistics.dart';
import 'package:pulse_app/actual_measure/statistics/statistics_page.dart';

class StatisticsPageView extends StatefulWidget {
  const StatisticsPageView({Key? key}) : super(key: key);

  @override
  _StatisticsPageViewState createState() => _StatisticsPageViewState();
}

class _StatisticsPageViewState extends State<StatisticsPageView> {
  PageController _pageController = PageController(initialPage: 0);
  List<Widget> pages = [EmptyStatistics(text: 'Statistics',),StatisticsPage(),];
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
