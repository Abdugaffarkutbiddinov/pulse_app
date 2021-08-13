import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_app/measure/custom_widgets.dart';

class MeasureTwoScreen extends StatelessWidget {
  final outHandPart = SvgPicture.asset(
    'assets/outHandPart.svg',
    color: Color(0xFFEF0303),
  );
  final innerHandPart = SvgPicture.asset(
    'assets/innerHandPart.svg',
    color: Color(0xFFEF0303),
  );

  final frame = SvgPicture.asset(
    'assets/frame.svg',
    color: Color(0xFFFF5D8D),
  );
  final image = SvgPicture.asset('assets/image.svg');
  final pngImage = Image.asset('assets/image.png');
  final star = SvgPicture.asset(
    'assets/star.svg',
    color: Color(0xFFFFB803),
  );
  CustomWidgets customWidgets = CustomWidgets();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ThumbUp(outHandPart: outHandPart, innerHandPart: innerHandPart),
          SizedBox(
            height: 30,
          ),
          FrameRate(frame: frame, star: star),
          SizedBox(
            height: 16,
          ),
          customWidgets.customText(text: 'Help us to improve the app'),
        ],
      ),
    );
  }
}

class FrameRate extends StatelessWidget {
  const FrameRate({
    Key? key,
    required this.frame,
    required this.star,
  }) : super(key: key);

  final SvgPicture frame;
  final SvgPicture star;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        frame,
        Positioned(
          child: star,
          top: 26.39,
          left: 146,
          bottom: 107.39,
          right: 187,
        ),
        Positioned(
          child: star,
          top: 26.39,
          left: 170,
          bottom: 107.39,
          right: 163,
        ),
        Positioned(
          child: star,
          top: 26.39,
          left: 194,
          bottom: 107.39,
          right: 139,
        ),
        Positioned(
          child: star,
          top: 26.39,
          left: 218,
          bottom: 107.39,
          right: 115,
        ),
        Positioned(
          child: star,
          top: 26.39,
          left: 242,
          bottom: 107.39,
          right: 91,
        ),
        Positioned(
          child: Text(
            "Thank you so much! "
            "it's so simple and convenient! "
            "The best heart rate monitor i've ever seen",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500),
          ),
          top: 70,
          left: 12,
          right: 12,
          bottom: 15,
        )
      ],
    );
  }
}

class ThumbUp extends StatelessWidget {
  const ThumbUp({
    Key? key,
    required this.outHandPart,
    required this.innerHandPart,
  }) : super(key: key);

  final SvgPicture outHandPart;
  final SvgPicture innerHandPart;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        outHandPart,
        Positioned(
          child: innerHandPart,
          top: 85.92,
          left: 4,
          bottom: 2.92,
          right: 133.5,
        )
      ],
    );
  }
}
