import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/actual_measure/heart_measure/result_screen.dart';
import 'package:pulse_app/custom_widgets/customAppBar.dart';
import 'package:pulse_app/custom_widgets/mainButton.dart';
import 'package:pulse_app/measure/constants.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final _heartImage = SvgPicture.asset(
    'assets/heartButton.svg',
    color: pinky,
  );
  final _startImage = SvgPicture.asset(
    'assets/Start.svg',
    color: Color(0xFFFFFFFF),
  );
  bool onStart = false;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            CustomAppBar(
              text: 'Measure',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              onStart == true ? "136" : '',
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
                text: onStart == true ? "Bmp".toUpperCase() : '',
                fontSize: 16,
                fontWeight: FontWeight.w600),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onStart = true;
                        counter += 1;
                        if (counter == 2) {
                          counter = 0;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen()),
                          );
                        }
                      });
                    },
                    splashColor: pinky,
                    child: Stack(
                      children: [
                        Center(child: _heartImage),
                        Positioned(
                          child: Text(
                            onStart == false ? "Start".toUpperCase() : "",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                              fontFamily: 'Raleway',
                              color: Color(0xFFFFFFFF),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          top: 54.9,
                          left: 19,
                          right: 20,
                          bottom: 77.9,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
           Expanded(child: SizedBox()),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      onStart == false
                          ? "Put your finger on the camera and flashlight and press the button"
                          : '13 seconds left',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        fontFamily: 'Raleway',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
