import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/statistics/empty_page.dart';
import 'package:pulse_app/actual_measure/statistics/statistics_page.dart';

import 'history_page.dart';

class HistoryPageView extends StatefulWidget {
  const HistoryPageView({Key? key}) : super(key: key);

  @override
  _HistoryPageViewState createState() => _HistoryPageViewState();
}

class _HistoryPageViewState extends State<HistoryPageView> {

  PageController _pageController = PageController(initialPage: 0);
  List<Widget> pages = [EmptyPage(text: 'History',),HistoryPage(),];
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
