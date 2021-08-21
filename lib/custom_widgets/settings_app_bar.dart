import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';

class SettingsAppBar extends StatefulWidget {
  const SettingsAppBar({required this.text});

  final String text;

  @override
  _SettingsAppBarState createState() => _SettingsAppBarState();
}

class _SettingsAppBarState extends State<SettingsAppBar> {
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
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                setState(() {
                    Navigator.pop(context);
                });
              },
              //TODO customize settings widget
              icon: Icon(Icons.arrow_back),
              iconSize: 24,
            ),
          ),
        )
      ],
    );
  }
}
