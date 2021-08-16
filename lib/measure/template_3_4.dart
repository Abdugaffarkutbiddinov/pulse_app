import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/measure/custom_widgets.dart';

class MeasureTemplateScreen extends StatelessWidget {
  MeasureTemplateScreen({required this.image, required this.text});

  final String image;
  final String text;

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
            child: CustomText(
                text: text, fontSize: 21, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
