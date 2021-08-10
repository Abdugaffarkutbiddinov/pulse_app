import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'measure_screen_1.dart';

class LogoPage extends StatefulWidget {
  @override
  _LogoPageState createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MeasureOneScreen())));
  }
  final heartLogo = SvgPicture.asset(
    'assets/vector.svg',
  );

  final innerLogo = SvgPicture.asset('assets/vector6.svg');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: Stack(children: [
              LinearGradientMask(child: heartLogo),
              Positioned(
                child: innerLogo,
                right: 5.0,
                top: 60,
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return RadialGradient(
          center: Alignment.topCenter,
          radius: 2,
          colors: [
            Color.fromRGBO(255, 93, 142, 1),
            Color.fromRGBO(239, 3, 3, 1)
          ],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
