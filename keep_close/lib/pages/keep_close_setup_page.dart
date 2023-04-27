import 'package:flutter/material.dart';
import 'package:keep_close/components/kc_elevated_button.dart';
import 'package:keep_close/components/kc_text_form_field.dart';

import '../components/kc_appbar.dart';
import '../components/keep_close_color_theme.dart';

/* Author: Natalie Koenig
 * Last Updated: 4/26/2023
 * Description: A class to hold the appearance and functionality
 * behind the app's device setup page
 */

class KeepCloseSetupPage extends StatefulWidget {
  const KeepCloseSetupPage({Key? key}) : super(key: key);

  @override
  State<KeepCloseSetupPage> createState() => _KeepCloseSetupPageState();
}

class _KeepCloseSetupPageState extends State<KeepCloseSetupPage> {
  final double widgetSpacing = 40;
  double buttonWidth = 250;
  double buttonHeight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // For our appbar, I've utilized my custom component KCAppBar
      appBar: KCAppBar(
          title: "Set Up Device",
          backgroundColor: KCColorTheme.getDarkColor(),
          accentColor: KCColorTheme.getLightColor(),
          fontSize: 30
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            child: KCTextFormField(labelText: "Enter Device Name"),
          ),
          KCElevatedButton(
            buttonTitle: "Search for Devices",
            onPress: () {
              print("Pressed Search Button");
            },
            minWidth: buttonWidth,
            minHeight: buttonHeight,
            fontSize: 20,
          ),
          KCElevatedButton(
            fontSize: 20,
            buttonTitle: "Connect to Device",
            onPress: () {
              print("Pressed Connect button");
            },
            minWidth: buttonWidth,
            minHeight: buttonHeight
          ),
        ],
      ),
    );
  }
}
