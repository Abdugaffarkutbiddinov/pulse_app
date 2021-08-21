import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';
import 'package:pulse_app/measure/pulse_scheme.dart';

class MeasureOneScreen extends StatelessWidget {

//TODO create place for holding indicator
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          PulseScheme(),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: CustomText(
                text: '''Correct and easy-to-use Heart 
       Rate Monitor: Pulse App''', fontSize: 21,fontWeight: FontWeight.w700,
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


