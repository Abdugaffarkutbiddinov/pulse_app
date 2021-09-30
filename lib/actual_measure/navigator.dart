//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pulse_app/actual_measure/heart_age/heart_page_view.dart';
// import 'package:pulse_app/actual_measure/heart_measure/measure_page_view.dart';
// import 'package:pulse_app/actual_measure/statistics/statistics_page_view.dart';
// import 'package:pulse_app/measure/constants.dart';
//
// import 'history/history_page_view.dart';
//
// int _currentIndex = 0;
//
// class NavigationMenu extends StatefulWidget {
//   @override
//   _NavigationMenuState createState() => _NavigationMenuState();
// }
//
// class _NavigationMenuState extends State<NavigationMenu> {
//   final tabs = [MeasurePageView(),
//     StatisticsPageView(),
//     HistoryPageView(),
//     HeartAgePageView(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: tabs[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _currentIndex,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.favorite_border,
//                 color: onActive(0),
//               ),
//               title: Text(
//                 'Measure',
//                 style: TextStyle(color: onActive(0)),
//               )),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.analytics_outlined,
//               color: onActive(1),
//             ),
//             title: Text(
//               'Statistics',
//               style: TextStyle(color: onActive(1)),
//             ),
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.access_alarm_outlined,
//                 color: onActive(2),
//               ),
//               title: Text(
//                 'History',
//                 style: TextStyle(color: onActive(2)),
//               )),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.alarm_on_outlined,
//                 color: onActive(3),
//               ),
//               title: Text(
//                 'Heart Age',
//                 style: TextStyle(color: onActive(3)),
//               )),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
//
// Color onActive(int index) {
//   return _currentIndex == index ? mainColor : Color(0xFF342121);
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/measure/constants.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../tab_navigator.dart';

class NavigationMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavigationMenuState();
}

class NavigationMenuState extends State<NavigationMenu> {
  String _currentPage = "Measure";
  List<String> pageKeys = ["Measure", "Statistics", "History", "Heart Age"];
  Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "Measure": GlobalKey<NavigatorState>(),
    "Statistics": GlobalKey<NavigatorState>(),
    "History": GlobalKey<NavigatorState>(),
    "Heart Age": GlobalKey<NavigatorState>(),
  };
  int _selectedIndex = 0;


  void _selectTab(String tabItem, int index) {
    if(tabItem == _currentPage ){
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
        !await _navigatorKeys[_currentPage]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentPage != "Measure") {
            _selectTab("Measure", 1);

            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
            children:<Widget>[
              _buildOffstageNavigator("Measure"),
              _buildOffstageNavigator("Statistics"),
              _buildOffstageNavigator("History"),
              _buildOffstageNavigator("Heart Age")
            ]
        ),
        bottomNavigationBar: SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
          onTap: (int index) { _selectTab(pageKeys[index], index); },
          currentIndex: _selectedIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: mainColor,
              icon: new Icon(Icons.favorite_border),
              title: new Text('Measure'),
            ),
            SalomonBottomBarItem(
              selectedColor: mainColor,
              icon: new Icon(Icons.analytics_outlined),
              title: new Text('Statistics'),
            ),
            SalomonBottomBarItem(
              selectedColor: mainColor,
              icon: new Icon(Icons.access_alarm_outlined),
              title: new Text('History'),
            ),
            SalomonBottomBarItem(
              selectedColor: mainColor,
              icon: new Icon(Icons.alarm_on_outlined),
              title: new Text('Heart Age'),
            ),
          ],
        ),
      ),
    );

  }



  Widget _buildOffstageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
