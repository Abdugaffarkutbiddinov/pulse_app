import 'package:flutter/cupertino.dart';

class CustomWidgets {
  Widget customText({required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 21,
          fontFamily: 'Raleway',
        ),
        textAlign: TextAlign.center,

      ),
    );
  }

}
