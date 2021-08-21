import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/custom_widgets/customAppBar.dart';
import 'package:pulse_app/custom_widgets/mainButton.dart';
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
SvgPicture leftEmojiLeftEye =
    SvgPicture.asset('assets/leftEmojiLeftEye.svg', color: Color(0xFF342121));
final leftEmojiMouth =
    SvgPicture.asset('assets/leftEmojiMouth.svg', color: Color(0xFF342121));
final leftEmojiRightEye =
    SvgPicture.asset('assets/leftEmojiRightEye.svg', color: Color(0xFF342121));
final middleEmojiEye =
    SvgPicture.asset('assets/middleEmojiEye.svg', color: Color(0xFF342121));
final middleEmojiMouth =
    SvgPicture.asset('assets/middleEmojiMouth.svg', color: Color(0xFF342121));
final rightEmojiEye =
    SvgPicture.asset('assets/rightEmojiEye.svg', color: Color(0xFF342121));
final rightEmojiMouth =
    SvgPicture.asset('assets/rightEmojiMouth.svg', color: Color(0xFF342121));

final leftColored = SvgPicture.asset('assets/leftColored.svg');
final middleColored = SvgPicture.asset('assets/middleColored.svg');
final rightColored = SvgPicture.asset('assets/rightColored.svg');
final gray = SvgPicture.asset('assets/gray.svg');

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
                      icon: Stack(
                        children: [
                          activeLeftEmoji == true ? leftColored : gray,
                          emojiBody,
                          Positioned(
                            child: leftEmojiLeftEye,
                            top: 19.48,
                            left: 13.91,
                            right: 36.17,
                            bottom: 30.61,
                          ),
                          Positioned(
                            child: leftEmojiRightEye,
                            top: 19.48,
                            left: 36.17,
                            right: 13.91,
                            bottom: 30.61,
                          ),
                          Positioned(
                            child: leftEmojiMouth,
                            top: 38.96,
                            left: 18.09,
                            right: 18.09,
                            bottom: 16.7,
                          ),
                        ],
                      ),
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
                      icon: Stack(
                        children: [
                          activeMiddleEmoji == true ? middleColored : gray,
                          emojiBody,
                          Positioned(
                            child: middleEmojiEye,
                            top: 22.26,
                            left: 16.7,
                            right: 38.96,
                            bottom: 33.39,
                          ),
                          Positioned(
                            child: middleEmojiEye,
                            top: 22.26,
                            left: 38.96,
                            right: 16.7,
                            bottom: 33.39,
                          ),
                          Positioned(
                            child: leftEmojiMouth,
                            top: 38.96,
                            left: 18.09,
                            right: 18.09,
                            bottom: 16.7,
                          )
                        ],
                      ),
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
                      icon: Stack(
                        children: [
                          activeRightEmoji == true ? rightColored : gray,
                          emojiBody,
                          Positioned(
                            child: rightEmojiEye,
                            top: 22.26,
                            left: 19.91,
                            right: 36.17,
                            bottom: 33.39,
                          ),
                          Positioned(
                            child: rightEmojiEye,
                            top: 22.26,
                            left: 36.17,
                            right: 19.91,
                            bottom: 33.39,
                          ),
                          Positioned(
                            child: rightEmojiMouth,
                            top: 38.96,
                            left: 18.09,
                            right: 18.09,
                            bottom: 16.7,
                          )
                        ],
                      ),
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
