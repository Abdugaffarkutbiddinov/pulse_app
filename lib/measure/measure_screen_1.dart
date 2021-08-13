import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_app/measure/custom_widgets.dart';

class MeasureOneScreen extends StatelessWidget {
  final mainRectangle = SvgPicture.asset(
    'assets/rectangle.svg',
    color: Colors.red,
  );
  final heart = SvgPicture.asset(
    'assets/heart.svg',
    color: Colors.pink,
  );

  final doubleLine = SvgPicture.asset(
    'assets/doubleLine.svg',
    color: Colors.red,
  );
  final leftCircle =
      SvgPicture.asset('assets/leftCircle.svg', color: Colors.red);
  final middleCircle =
      SvgPicture.asset('assets/middleCircle.svg', color: Colors.red);
  final highestCircle =
      SvgPicture.asset('assets/highestCircle.svg', color: Colors.red);
  final lineButton =
      SvgPicture.asset('assets/lineButton.svg', color: Colors.red);
  final smallRectan =
      SvgPicture.asset('assets/smallRectan.svg', color: Colors.red);
  final middleRectan =
      SvgPicture.asset('assets/middleRectan.svg', color: Colors.red);
  final highRectan =
      SvgPicture.asset('assets/middleRectan.svg', color: Colors.red);
  CustomWidgets customWidget = CustomWidgets();

//TODO create place for holding indicator
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          PulseScheme(
              mainRectangle: mainRectangle,
              heart: heart,
              doubleLine: doubleLine,
              leftCircle: leftCircle,
              middleCircle: middleCircle,
              highestCircle: highestCircle,
              lineButton: lineButton,
              middleRectan: middleRectan,
              smallRectan: smallRectan),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: customWidget.customText(
                text: '''Correct and easy-to-use Heart 
       Rate Monitor: Pulse App''',
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Measure the BPM and find out '
              'the biological age of your heart.'
              'View the statistics '
              'of your measurements at any time',
              style: TextStyle(fontFamily: 'Ralewafbfgh', fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class PulseScheme extends StatelessWidget {
  const PulseScheme({
    Key? key,
    required this.mainRectangle,
    required this.heart,
    required this.doubleLine,
    required this.leftCircle,
    required this.middleCircle,
    required this.highestCircle,
    required this.lineButton,
    required this.middleRectan,
    required this.smallRectan,
  }) : super(key: key);

  final SvgPicture mainRectangle;
  final SvgPicture heart;
  final SvgPicture doubleLine;
  final SvgPicture leftCircle;
  final SvgPicture middleCircle;
  final SvgPicture highestCircle;
  final SvgPicture lineButton;
  final SvgPicture middleRectan;
  final SvgPicture smallRectan;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        mainRectangle,
        Positioned(
          child: heart,
          top: 52,
          left: 22,
          bottom: 82,
          right: 154,
        ),
        Positioned(
          child: doubleLine,
          top: 39,
          left: 135.5,
          bottom: 118.5,
          right: 38,
        ),
        Positioned(
          child: leftCircle,
          top: 38,
          left: 110,
          bottom: 123,
          right: 90,
        ),
        Positioned(
          child: middleCircle,
          top: 59,
          left: 160,
          bottom: 102,
          right: 49,
        ),
        Positioned(
          child: highestCircle,
          top: 17,
          left: 185,
          bottom: 144,
          right: 16,
        ),
        Positioned(
          child: lineButton,
          top: 165,
          left: 72,
          right: 29,
        ),
        Positioned(
          child: middleRectan,
          top: 121,
          left: 84,
          bottom: 19,
          right: 124,
        ),
        Positioned(
          child: middleRectan,
          top: 103,
          left: 125,
          bottom: 19,
          right: 83,
        ),
        Positioned(
          child: smallRectan,
          top: 130,
          left: 166,
          bottom: 19,
          right: 42,
        )
      ],
    );
  }
}

// Text(
// '''Correct and easy-to-use Heart
//       Rate Monitor: Pulse App''',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 21,
// fontFamily: 'Raleway',
// ),
//
// )
