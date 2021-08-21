import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/navigator.dart';
import 'package:pulse_app/custom_widgets/mainButton.dart';
import 'package:pulse_app/actual_measure/heart_measure/measure_page_view.dart';
import 'package:pulse_app/measure/constants.dart';
import 'package:pulse_app/measure/measure_screen_1.dart';
import 'package:pulse_app/measure/measure_screen_2.dart';
import 'package:pulse_app/measure/subscribe_page.dart';
import 'package:pulse_app/measure/template_3_4.dart';

class ControllerScreen extends StatefulWidget {
  @override
  _ControllerScreenState createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  int pageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  List<Widget> pages = [
    MeasureOneScreen(),
    MeasureTwoScreen(),
    MeasureTemplateScreen(
        image: 'assets/Rectangle.png',
        text: "Put your finger on your camera's lens and the flashlight"),
    MeasureTemplateScreen(
        image: 'assets/fourScreenImage.png',
        text: "Heart Age : Measure the age of your heart"),
    SubscribePage()
  ];

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
                  children: pages,
                )),
                Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: DotsIndicator(
                          dotsCount: pages.length,
                          position: pageIndex.toDouble(),
                          decorator:
                              DotsDecorator(activeColor: Color(0xFFEF0303)),
                        ),
                      ),
                      MainButton(
                          text: pageIndex == (pages.length - 1)
                              ? "Subscribe".toUpperCase()
                              : "Next".toUpperCase(),
                          onPressed: () {
                            setState(() {
                              if (pageIndex != pages.length - 1) {
                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.decelerate);
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationMenu()),
                                );
                              }
                            });
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      Opacity(
                          opacity: pageIndex == (pages.length - 1) ? 1 : 0,
                          child: Text(
                            "\$3 Per week",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Opacity(
                          opacity: pageIndex == (pages.length - 1) ? 1 : 0,
                          child: Text(
                            "By continuing, you agree to our Privacy Policy and Terms of Use",
                            style: TextStyle(
                                fontSize: 11.5,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Raleway'),
                          )),
                    ],
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
          child: Text(
              pageIndex == (pages.length - 1)
                  ? "Subscribe".toUpperCase()
                  : "Next".toUpperCase(),
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700)),
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(pinky),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: pinky)))),
        onPressed: () {
          setState(() {
            if (pageIndex != pages.length - 1) {
              _pageController.nextPage(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.decelerate);
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavigationMenu()),
              );
            }
          });
        },
      ),
    );
  }
}
