import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';
import 'package:pulse_app/custom_widgets/logo_widget.dart';
import 'package:pulse_app/custom_widgets/settings_app_bar.dart';
import 'package:pulse_app/measure/logo_page.dart';

class SettingsAboutApp extends StatelessWidget {
  const SettingsAboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingsAppBar(text: 'AboutApp'),
          Expanded(child: SizedBox()),
          Center(child: LogoWidget()),
          SizedBox(
            height: 30,
          ),
          CustomText(text: 'V 5.5.1', fontSize: 18, fontWeight: FontWeight.w600),
          Expanded(child: SizedBox())
        ],
      ),
    ));
  }
}
