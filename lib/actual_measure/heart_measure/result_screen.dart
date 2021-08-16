import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/actual_measure/heart_measure/result_screen.dart';
import 'package:pulse_app/custom_widgets/customAppBar.dart';
import 'package:pulse_app/custom_widgets/mainButton.dart';
import 'package:pulse_app/main.dart';
import 'package:pulse_app/measure/constants.dart';
import 'package:pulse_app/measure/custom_widgets.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CustomAppBar(
              text: 'Result',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "136",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 36,
                  fontFamily: 'Raleway',
                  color: mainColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
                text: "Bmp".toUpperCase(),
                fontSize: 16,
                fontWeight: FontWeight.w600),
            SizedBox(height: 40,),
            CustomText(text: 'How do you feel?', fontSize: 18, fontWeight: FontWeight.w600),
            Stack(children: [],),
            Expanded(
              child: SizedBox(),
            ),
            MainButton(
                text: "text",
                onPressed: () {
                  print('sd');
                }),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
