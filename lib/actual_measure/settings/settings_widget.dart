import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/settings/settings_about_app.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';

class SettingsWidget extends StatefulWidget {
  SettingsWidget({required this.icon,required this.text,required this.navigateTo});
  final Icon icon;
  final String text;
  Widget navigateTo;

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
      child: GestureDetector(
        onTap: () {setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.navigateTo),
          );
        });},
        child: Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFF342121),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                widget.icon,
                SizedBox(width: 20),
                CustomText(
                    text: widget.text,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)
              ],
            ),
          ),
        ),
      ),
    )
    ;
  }
}
