import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  CustomText({required this.text, required this.fontSize, required this.fontWeight,});

  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: 'Raleway',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
