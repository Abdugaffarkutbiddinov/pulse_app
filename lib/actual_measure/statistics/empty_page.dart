import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_app/custom_widgets/custom_app_bar.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';

class EmptyPage extends StatefulWidget {


  @override
  _EmptyPageState createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  final statisticsFrame = SvgPicture.asset('assets/statisticsFrame.svg');
  final statisticsClockPointer =
      SvgPicture.asset('assets/statisticsClockPointer.svg');
  final rightBookPage = SvgPicture.asset('assets/rightBookPage.svg');
  final rightBookCover = SvgPicture.asset('assets/rightBookCover.svg');

  final leftBookPage = SvgPicture.asset('assets/leftBookPage.svg');
  final leftBookCover = SvgPicture.asset('assets/leftBookCover.svg');
  final feather = SvgPicture.asset('assets/feather.svg');
  final clockFrame = SvgPicture.asset('assets/clockFrame.svg');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          CustomAppBar(text: "Statistics"),
          SizedBox(height: 100,),
          Center(
            child: Stack(
              children: [
                Positioned(
                  child: clockFrame,
                  top: 55.93,
                  left: 31.43,
                  right: 73.62,
                  bottom: 50.54,
                ),
                statisticsFrame,
                Positioned(
                  child: statisticsClockPointer,
                  top: 77,
                  left: 70,
                  right: 122.5,
                  bottom: 84.02,
                ),
                Positioned(
                  child: rightBookPage,
                  top: 165.27,
                  left: 105.64,
                  right: 14.09,
                  bottom: 17.52,
                ),
                Positioned(
                  child: leftBookPage,
                  top: 165.27,
                  left: 14.09,
                  right: 105.64,
                  bottom: 17.52,
                ),
                Positioned(
                  child: rightBookCover,
                  top: 172.3,
                  left: 105,
                  right: 3.5,
                  bottom: 3.52,
                ),
                Positioned(
                  child: leftBookCover,
                  top: 172.3,
                  left: 3.5,
                  right: 105,
                  bottom: 3.52,
                ),
                Positioned(
                  child: feather,
                  top: 4.28,
                  left: 103.6,
                  right: 3.95,
                  bottom: 97.89,
                ),

              ],
            ),
          ),
          SizedBox(height: 55,),
          CustomText(
              text: "You don`t have ${"Statistics".toLowerCase()} yet",
              fontSize: 18,
              fontWeight: FontWeight.w400)
        ],
      ),
    ));
  }
}
