import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/measure/custom_widgets.dart';

class MeasureThreeScreen extends StatelessWidget {
  final logo = SvgPicture.asset('assets/thirdScreenImage.svg',color: Colors.cyan,);
  CustomWidgets customWidgets = CustomWidgets();
  final rectangle = Image(image: AssetImage('assets/Rectangle.png'),);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
          rectangle,
          SizedBox(
            height: 60,
          ),
          Center(
            child: customWidgets.customText(
              text: "Put your finger on your camera's lens and the flashlight",
            ),
          ),
          SizedBox(height: 16,)
        ],
      ),
    );
  }
}
