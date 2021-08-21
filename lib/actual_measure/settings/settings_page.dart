import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_app/actual_measure/settings/settings_about_app.dart';
import 'package:pulse_app/actual_measure/settings/settings_widget.dart';
import 'package:pulse_app/custom_widgets/custom_widgets.dart';
import 'package:pulse_app/custom_widgets/settings_app_bar.dart';
import 'package:pulse_app/measure/constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          SettingsAppBar(text: 'Settings'),
          SizedBox(
            height: 30,
          ),
          SettingsWidget(
            icon: Icon(Icons.gpp_good_outlined),
            text: 'Privacy Policy',
            navigateTo: SettingsAboutApp(),
          ),
          SettingsWidget(
              icon: Icon(Icons.error_outline),
              text: 'Terms of Use',
              navigateTo: SettingsAboutApp()),
          SettingsWidget(
              icon: Icon(Icons.help_outline),
              text: 'Support',
              navigateTo: SettingsAboutApp()),
          SettingsWidget(
              icon: Icon(Icons.info_outline),
              text: 'About App',
              navigateTo: SettingsAboutApp())
        ],
      ),
    ));
  }
}
