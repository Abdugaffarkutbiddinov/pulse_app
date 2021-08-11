import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeasureOneScreen extends StatelessWidget {

//TODO create place for holding indicator
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 100,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// Container(
// padding: EdgeInsets.all(10),
// child: Row(
// children: [
// indicatorElement()
// ],
// ),
// )