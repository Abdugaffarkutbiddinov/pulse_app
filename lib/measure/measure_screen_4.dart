import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/measure/custom_widgets.dart';

class MeasureFourScreen extends StatelessWidget {
  final logo = SvgPicture.asset('assets/thirdScreenImage.svg',color: Colors.cyan,);
  CustomWidgets customWidgets = CustomWidgets();
  final rectangle = Image(image: AssetImage('assets/fourScreenImage.png'),);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(60),
      child: Column(
        children: [
          SizedBox(height: 20,),
          rectangle,
          SizedBox(
            height: 45,
          ),
          Center(
            child: customWidgets.customText(
              text: "Heart Age : Measure the age of your heart",
            ),
          ),
          SizedBox(height: 16,)
        ],
      ),
    );
  }
}
