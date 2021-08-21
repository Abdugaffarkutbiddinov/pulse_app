import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/custom_widgets/bad_emoji.dart';
import 'package:pulse_app/custom_widgets/custom_app_bar.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';
import 'package:pulse_app/measure/constants.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<HistoryHolder> historyData = [
    HistoryHolder(),
    HistoryHolder(),
    HistoryHolder(),
    HistoryHolder(),
    HistoryHolder(),
    HistoryHolder(),
    HistoryHolder(),
    HistoryHolder(),
    HistoryHolder()
  ];
  List<Container> containers = [
    Container(
      color: mainColor,
    ),
    Container(
      color: pinky,
    ),
    Container(
      color: Color(0xFF555555),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(text: "History"),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: historyData.length,
                itemBuilder: (BuildContext context, int index) {
                  return historyData[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryHolder extends StatelessWidget {
  SvgPicture _frame = SvgPicture.asset('assets/historyFrame.svg');
  final leftColored = SvgPicture.asset('assets/leftColored.svg');
  final middleColored = SvgPicture.asset('assets/middleColored.svg');
  final rightColored = SvgPicture.asset('assets/rightColored.svg');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 15
      ),
      child: Container(
        height: 70,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xFF342121))),
        child: Row(
          children: [
            Expanded(child: SizedBox()),
            BadEmoji(colored: leftColored),
            Expanded(child: SizedBox()),
            Text(
              '108',
              style: TextStyle(
                  color: mainColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Raleway'),
            ),
            SizedBox(
              height: 15,
            ),
            CustomText(
                text: 'Bpm'.toUpperCase(),
                fontSize: 18,
                fontWeight: FontWeight.w600),
            Expanded(child: SizedBox()),
            CustomText(
                text: '07.19.21'.toUpperCase(),
                fontSize: 18,
                fontWeight: FontWeight.w400),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}

// Stack(
// children: [
// _frame,
// Positioned(
// child: BadEmoji(colored: leftColored),
// top: 12,
// left: 16,
// right: 287,
// bottom: 12,
// ),
// Positioned(
// child: Text(
// '108',
// style: TextStyle(
// fontSize: 24,
// fontWeight: FontWeight.w800,
// fontFamily: 'Raleway'),
// ),
// top: 8,
// left: 48,
// right: 209,
// bottom: 8,
// ),
// Positioned(
// child: CustomText(
// text: 'Bpm'.toUpperCase(),
// fontSize: 18,
// fontWeight: FontWeight.w600),
// top: 12,
// left: 118,
// right: 168,
// bottom: 12,
// ),
// Positioned(
// child: CustomText(
// text: '07.19.21'.toUpperCase(),
// fontSize: 18,
// fontWeight: FontWeight.w400),
// top: 8,
// left: 223,
// right: 24,
// bottom: 8,
// ),
// ],
// ),
