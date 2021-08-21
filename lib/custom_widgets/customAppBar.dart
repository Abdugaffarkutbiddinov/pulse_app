import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({required this.text});

  final String text;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: CustomText(
                text: widget.text, fontSize: 26, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                setState(() {
                  print("settings");
                });
              },
              //TODO customize settings widget
              icon: Icon(Icons.settings),
              iconSize: 24,
            ),
          ),
        )
      ],
    );
  }
}
