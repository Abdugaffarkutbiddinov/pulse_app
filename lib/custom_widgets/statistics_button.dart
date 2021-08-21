import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/measure/constants.dart';

import 'custom_widgets.dart';

class StatisticsButton extends StatefulWidget {
  final String text;
  final Function()? onPressed;
  final Color color;

  const StatisticsButton({required this.text, required this.onPressed, required this.color});

  @override
  _StatisticsButtonState createState() => _StatisticsButtonState();
}

class _StatisticsButtonState extends State<StatisticsButton> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 100, height: 50),
      child: ElevatedButton(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(widget.text,style: TextStyle(fontSize: 15,fontFamily: 'Raleway',fontWeight: FontWeight.w600),)
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(widget.color),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: widget.color)))),
        onPressed: widget.onPressed,
      ),
    );
  }
}
