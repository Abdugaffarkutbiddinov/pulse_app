import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/custom_widgets/custom_app_bar.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';
import 'package:pulse_app/custom_widgets/statistics_button.dart';
import 'package:pulse_app/measure/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

bool activeLeftEmoji = false;
bool activeMiddleEmoji = false;
bool activeRightEmoji = false;

class _StatisticsPageState extends State<StatisticsPage> {
  List<HeartRate> _chartDate = [];
  SvgPicture toLeft = SvgPicture.asset('assets/toLeft.svg');
  SvgPicture toRight = SvgPicture.asset('assets/toRight.svg');

  @override
  void initState() {
    _chartDate = getCharData();
    super.initState();
  }

//TODO find out how to implement dates and for year get average rate or what
  List<HeartRate> getCharData() {
    List<HeartRate> data = [
      HeartRate(day: 'Sun'.toUpperCase(), heartMeasure: 75),
      HeartRate(day: 'Mon'.toUpperCase(), heartMeasure: 90),
      HeartRate(day: 'Tue'.toUpperCase(), heartMeasure: 115),
      HeartRate(day: 'Wed'.toUpperCase(), heartMeasure: 127),
      HeartRate(day: 'Thus'.toUpperCase(), heartMeasure: 100),
      HeartRate(day: 'Fri'.toUpperCase(), heartMeasure: 115),
      HeartRate(day: 'Sat'.toUpperCase(), heartMeasure: 120)
    ];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            CustomAppBar(text: "Statistics"),
            SizedBox(
              height: 20,
            ),
            CustomText(
                text: 'Period', fontSize: 18, fontWeight: FontWeight.w600),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  StatisticsButton(
                      text: "Week",
                      color: activeLeftEmoji == true
                          ? mainColor
                          : Color(0xFF9E9797),
                      onPressed: () {
                        setState(() {
                          if (activeLeftEmoji == false &&
                              activeMiddleEmoji == false &&
                              activeRightEmoji == false) {
                            activeLeftEmoji = true;
                          } else
                            activeLeftEmoji = false;
                        });
                      }),
                  Expanded(child: SizedBox()),
                  StatisticsButton(
                      color: activeMiddleEmoji == true
                          ? mainColor
                          : Color(0xFF9E9797),
                      text: "Month",
                      onPressed: () {
                        setState(() {
                          if (activeMiddleEmoji == false &&
                              activeLeftEmoji == false &&
                              activeRightEmoji == false) {
                            activeMiddleEmoji = true;
                          } else
                            activeMiddleEmoji = false;
                        });
                      }),
                  Expanded(child: SizedBox()),
                  StatisticsButton(
                      color: activeRightEmoji == true
                          ? mainColor
                          : Color(0xFF9E9797),
                      text: "Year",
                      onPressed: () {
                        setState(() {
                          if (activeRightEmoji == false &&
                              activeMiddleEmoji == false &&
                              activeLeftEmoji == false) {
                            activeRightEmoji = true;
                          } else
                            activeRightEmoji = false;
                        });
                      }),
                  Expanded(child: SizedBox())
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Row(
              children: [
                Expanded(child: SizedBox()),
                IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: toLeft),
                Expanded(child: SizedBox()),
                CustomText(
                    text: '07.19 - 07.25',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                Expanded(child: SizedBox()),
                IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: toRight),
                Expanded(child: SizedBox()),
              ],
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SfCartesianChart(
                series: <ChartSeries<HeartRate, String>>[
                  LineSeries<HeartRate, String>(
                    dataSource: _chartDate,
                    xValueMapper: (HeartRate rates, _) => rates.day,
                    yValueMapper: (HeartRate rates, _) => rates.heartMeasure,
                    markerSettings: MarkerSettings(
                        isVisible: true,
                        color: mainColor,
                        borderColor: mainColor),
                    color: Color(0xFF342121),
                  ),
                ],
                primaryXAxis: CategoryAxis(
                  majorGridLines: MajorGridLines(width: 0),
                ),
              ),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}

class HeartRate {
  String day;
  int heartMeasure;

  HeartRate({required this.day, required this.heartMeasure});
}
