import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/heart_measure/result_screen.dart';
import 'package:pulse_app/actual_measure/heart_measure/measurePageView.dart';
import 'package:pulse_app/actual_measure/statistics/statistics_page_view.dart';
import 'package:pulse_app/measure/constants.dart';

import 'heart_measure/start_screen.dart';

int _currentIndex = 0;

class NavigationMenu extends StatefulWidget {
  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final tabs = [MeasurePageView(),
    StatisticsPageView(),
    Container(
      color: Color(0xFFAA7878),
    ),
    Container(
      color: Color(0xFF000000),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: onActive(0),
              ),
              title: Text(
                'Measure',
                style: TextStyle(color: onActive(0)),
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.analytics_outlined,
              color: onActive(1),
            ),
            title: Text(
              'Statistics',
              style: TextStyle(color: onActive(1)),
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarm_outlined,
                color: onActive(2),
              ),
              title: Text(
                'History',
                style: TextStyle(color: onActive(2)),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.alarm_on_outlined,
                color: onActive(3),
              ),
              title: Text(
                'Heart Age',
                style: TextStyle(color: onActive(3)),
              )),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

Color onActive(int index) {
  return _currentIndex == index ? mainColor : Color(0xFF342121);
}
