import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/heart_age/start_page.dart';
import 'package:pulse_app/actual_measure/heart_age/test_page.dart';

class HeartAgePageView extends StatefulWidget {
  PageController _pageController = PageController(initialPage: 0);
  List<Widget> pages = [StartScreenHeartAge(),];
  bool nextPage = false;

  @override
  _HeartAgePageViewState createState() => _HeartAgePageViewState();
}

class _HeartAgePageViewState extends State<HeartAgePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          // TODO Will go back to this when sensors will be implemented
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              if (widget.nextPage == true) {
                widget._pageController.nextPage(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.decelerate);
              }
            });
          },
          controller: widget._pageController,
          children: widget.pages,
        ),
      ),
    );
  }
}
