import 'package:flutter/cupertino.dart';

class CustomWidgets {
  Widget customText({required String text}) {
    return Text(text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 21,
        fontFamily: 'Raleway',
      ),
      textAlign: TextAlign.center,

    );
  }
}
