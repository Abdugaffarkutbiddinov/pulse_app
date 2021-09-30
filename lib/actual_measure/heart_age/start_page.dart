import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/actual_measure/heart_age/heart_page_view.dart';
import 'package:pulse_app/actual_measure/heart_age/test_page.dart';
import 'package:pulse_app/custom_widgets/bad_emoji.dart';
import 'package:pulse_app/custom_widgets/custom_app_bar.dart';
import 'package:pulse_app/custom_widgets/good_emoji.dart';
import 'package:pulse_app/custom_widgets/main_button.dart';
import 'package:pulse_app/custom_widgets/normal_emoji.dart';
import 'package:pulse_app/measure/constants.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';

class StartScreenHeartAge extends StatefulWidget {
  @override
  _StartScreenHeartAgeState createState() => _StartScreenHeartAgeState();
}

class _StartScreenHeartAgeState extends State<StartScreenHeartAge> {
  @override
  Widget build(BuildContext context) {
  HeartAgePageView pageViewList = HeartAgePageView();
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CustomAppBar(
              text: 'Heart Age',
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.0),
              child: Text(
                "How old is your heart?",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 36,
                    fontFamily: 'Raleway',
                    color: mainColor),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomText(
                text: 'Heart Age Test',
                fontSize: 21,
                fontWeight: FontWeight.w600),
            SizedBox(
              height: 78,
            ),
            CustomText(
                text:
                    '1.	Compares the biological state (age) of the heart with your real age',
                fontSize: 18,
                fontWeight: FontWeight.w400),
            Expanded(child: SizedBox()),
            CustomText(
                text:
                    '2.	Gives recommendations on how to improve the condition of your heart',
                fontSize: 18,
                fontWeight: FontWeight.w400),
            Expanded(
              child: SizedBox(),
            ),
            MainButton(
                text: "Start Test".toUpperCase(),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TestPage()),
                    );
                  });
                } ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
