import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/measure/measure_screen_1.dart';
import 'package:pulse_app/measure/measure_screen_2.dart';
import 'package:pulse_app/measure/measure_screen_3.dart';

class ControllerScreen extends StatefulWidget {
  @override
  _ControllerScreenState createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  int pageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

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
                  padding: EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: DotsIndicator(
                          dotsCount: 3,
                          position: pageIndex.toDouble(),
                          decorator:
                              DotsDecorator(activeColor: Color(0xFFEF0303)),
                        ),
                      ),
                      buildElevetadeButtom()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ConstrainedBox buildElevetadeButtom() {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 259, height: 59),
      child: ElevatedButton(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text("Next".toUpperCase(), style: TextStyle(fontSize: 30)),
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFFFF5D8D)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: Color(0xFFFF5D8D))))),
        onPressed: () {
          setState(() {
            _pageController.nextPage(
                duration: Duration(milliseconds: 1000),
                curve: Curves.decelerate);
          });
        },
      ),
    );
  }
}
