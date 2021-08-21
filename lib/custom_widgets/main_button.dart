import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/navigator.dart';
import 'package:pulse_app/measure/constants.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';

class MainButton extends StatefulWidget {
  MainButton({ required this.text, required this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 259, height: 59),
      child: ElevatedButton(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: CustomText(
            text: widget.text, fontSize: 30, fontWeight: FontWeight.w700,),
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(pinky),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: pinky)))),
        onPressed: widget.onPressed,
      ),
    );
  }
}
