import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/heart_measure/result_screen.dart';
import 'package:pulse_app/actual_measure/heart_measure/start_screen.dart';

class MeasurePageView extends StatefulWidget {
  const MeasurePageView({Key? key}) : super(key: key);

  @override
  _MeasurePageViewState createState() => _MeasurePageViewState();
}

class _MeasurePageViewState extends State<MeasurePageView> {
  PageController _pageController = PageController(initialPage: 0);
  List<Widget> pages = [StartScreen(), ResultScreen()];
  bool scrollable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          // TODO Will go back to this when sensors will be implemented
          physics: scrollable
              ? AlwaysScrollableScrollPhysics()
              : NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              if (_pageController.initialPage != index) {
                scrollable = false;
              }
            });
          },
          controller: _pageController,
          children: pages,
        ),
      ),
    );
  }
}
