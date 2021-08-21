import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';
import 'package:pulse_app/measure/pulse_scheme.dart';

class SubscribePage extends StatelessWidget {
  final image_1 = SvgPicture.asset('assets/subscribeImage1.svg');
  final image_2 = SvgPicture.asset('assets/subscribeImage2.svg');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CloseButton(
                      onPressed: () {
                        print('close');
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: FlatButton(
                      onPressed: () {
                        print("restore purchase");
                      },
                      child: Text("restore purchase"),
                    ),
                  ),
                )
              ],
            ),
            PulseScheme(),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: CustomText(
                        text: 'Heart Age Test',
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                    top: 20,
                    left: 100,
                  ),
                  Positioned(
                    child: image_1,
                    top: 25,
                  ),
                  Positioned(
                    child: CustomText(
                        text: 'Monitor your health stats',
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                    top: 80,
                    left: 50,
                  ),
                  Positioned(
                    child: image_2,
                    top: 120,
                  ),
                  Positioned(
                    child: CustomText(
                        text: 'History of dimensions',
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                    top: 160,
                    left: 70,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
