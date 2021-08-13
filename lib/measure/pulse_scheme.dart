
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_app/measure/constants.dart';

class PulseScheme extends StatelessWidget {
  final mainRectangle = SvgPicture.asset(
    'assets/rectangle.svg',
    color: mainColor,
  );
  final heart = SvgPicture.asset(
    'assets/heart.svg',
    color: pinky,
  );

  final doubleLine = SvgPicture.asset(
    'assets/doubleLine.svg',
    color: mainColor,
  );
  final leftCircle =
  SvgPicture.asset('assets/leftCircle.svg', color: mainColor);
  final middleCircle =
  SvgPicture.asset('assets/middleCircle.svg', color: mainColor);
  final highestCircle =
  SvgPicture.asset('assets/highestCircle.svg', color: mainColor);
  final lineButton =
  SvgPicture.asset('assets/lineButton.svg', color: mainColor);
  final smallRectan =
  SvgPicture.asset('assets/smallRectan.svg', color: mainColor);
  final middleRectan =
  SvgPicture.asset('assets/middleRectan.svg', color: mainColor);
  final highRectan =
  SvgPicture.asset('assets/middleRectan.svg', color: mainColor);
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

