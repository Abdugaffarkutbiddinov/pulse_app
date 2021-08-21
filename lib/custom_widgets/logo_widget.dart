import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoWidget extends StatefulWidget {
  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  final heartLogo = SvgPicture.asset(
    'assets/vector.svg',
  );

  final innerLogo = SvgPicture.asset('assets/vector6.svg');

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
          LinearGradientMask(child: heartLogo),
          Positioned(
            child: innerLogo,
            right: 5.0,
            top: 60,
          )
        ]),
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
