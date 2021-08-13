import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/measure/custom_widgets.dart';

class MeasureTemplateScreen extends StatelessWidget {
  MeasureTemplateScreen({required this.image, required this.text});

  final String image;
  final String text;
  CustomWidgets customWidgets = CustomWidgets();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage(image),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: customWidgets.customText(
              text: text,
            ),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
