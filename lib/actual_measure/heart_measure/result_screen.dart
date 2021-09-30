import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/custom_widgets/bad_emoji.dart';
import 'package:pulse_app/custom_widgets/custom_app_bar.dart';
import 'package:pulse_app/custom_widgets/good_emoji.dart';
import 'package:pulse_app/custom_widgets/main_button.dart';
import 'package:pulse_app/custom_widgets/normal_emoji.dart';
import 'package:pulse_app/measure/constants.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

bool activeLeftEmoji = false;
bool activeMiddleEmoji = false;
bool activeRightEmoji = false;
SvgPicture emojiBody = SvgPicture.asset(
  'assets/emojiBody.svg',
  color: Color(0xFF342121),
);

final leftColored = SvgPicture.asset('assets/leftColored.svg');
final middleColored = SvgPicture.asset('assets/middleColored.svg');
final rightColored = SvgPicture.asset('assets/rightColored.svg');
final gray = SvgPicture.asset('assets/gray.svg');
//TODO deal with emoji data sending to other screens
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
            SizedBox(
              height: 40,
            ),
            CustomText(
                text: 'How do you feel?',
                fontSize: 18,
                fontWeight: FontWeight.w600),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, right: 30.0, left: 30.0),
                child: Row(
                  children: [
                    IconButton(
                      splashColor: Color(0xFFFF947C),
                      iconSize: 100,
                      icon: GoodEmoji(colored: activeLeftEmoji == true ? leftColored : gray,),
                      onPressed: () {
                        setState(() {
                          if (activeLeftEmoji == false &&
                              activeMiddleEmoji == false &&
                              activeRightEmoji == false) {
                            activeLeftEmoji = true;
                          } else
                            activeLeftEmoji = false;
                        });
                      },
                    ),
                    IconButton(
                      splashColor: Color(0xFFFCFF7C),
                      iconSize: 100,
                      icon: NormalEmoji(colored: activeMiddleEmoji == true ? middleColored : gray,),
                      onPressed: () {
                        setState(() {
                          if (activeMiddleEmoji == false &&
                              activeLeftEmoji == false &&
                              activeRightEmoji == false) {
                            activeMiddleEmoji = true;
                          } else
                            activeMiddleEmoji = false;
                        });
                      },
                    ),
                    IconButton(
                      splashColor: Color(0xFFD5FF7C),
                      iconSize: 100,
                      icon: BadEmoji(colored: activeRightEmoji == true ? rightColored : gray,),
                      onPressed: () {
                        setState(() {
                          if (activeRightEmoji == false &&
                              activeMiddleEmoji == false &&
                              activeLeftEmoji == false) {
                            activeRightEmoji = true;
                          } else
                            activeRightEmoji = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Bad',
                        fontSize: 18,
                        fontWeight: activeLeftEmoji
                            ? FontWeight.w600
                            : FontWeight.w400),
                    Expanded(child: SizedBox()),
                    CustomText(
                        text: 'Normal',
                        fontSize: 18,
                        fontWeight: activeMiddleEmoji
                            ? FontWeight.w600
                            : FontWeight.w400),
                    Expanded(child: SizedBox()),
                    CustomText(
                        text: 'Good',
                        fontSize: 18,
                        fontWeight: activeRightEmoji
                            ? FontWeight.w600
                            : FontWeight.w400),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            MainButton(
                text: "Save".toUpperCase(),
                onPressed: () {
                  print('sd');
                }),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
