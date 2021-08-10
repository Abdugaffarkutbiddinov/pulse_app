import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeasureOneScreen extends StatefulWidget {
  const MeasureOneScreen({Key? key}) : super(key: key);

  @override
  _MeasureOneScreenState createState() => _MeasureOneScreenState();
}

class _MeasureOneScreenState extends State<MeasureOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: DotsIndicator(dotsCount: 2,position: 1,),);
  }
}
