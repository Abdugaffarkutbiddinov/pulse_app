import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/measure/measure_screen_1.dart';
import 'package:pulse_app/measure/measure_screen_2.dart';
import 'package:pulse_app/measure/measure_screen_3.dart';
import 'package:pulse_app/measure/page_indicator.dart';

class ControllerScreen extends StatefulWidget {
  @override
  _ControllerScreenState createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  int pageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<Widget> indicatorSetup(int pageNumber) {
    List<Widget> indicators = [];

    for (int i = 0; i < 3
    ; i++) {
      if (pageNumber == i) {
        indicators.add(indicatorElement(true));
      } else
        indicators.add(indicatorElement(false));
    }
    return indicators;
  }

  Widget indicatorElement(bool isActive) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? Colors.cyan : Colors.lightBlue),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(
                    child: PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  controller: _pageController,
                  children: [
                    MeasureOneScreen(),
                    MeasureTwoScreen(),
                    MeasureThreeScreen()
                  ],
                )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicatorSetup(pageIndex)),
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.decelerate);
                    });
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
