import 'package:flutter/material.dart';
import 'package:keep_close/components/kc_text_form_field.dart';

import '../components/kc_appbar.dart';
import '../components/keep_close_color_theme.dart';

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
          ElevatedButton(
            onPressed: () {
              print("Pressed Search Button");
            },
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(KCColorTheme.getYellowAccent()),
                minimumSize: MaterialStateProperty.all(Size(buttonWidth, buttonHeight))
            ),
            child: Text(
              "Search for Devices",
              style: TextStyle(
                color: KCColorTheme.getDarkColor(),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Pressed Connect button");
            },
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(KCColorTheme.getYellowAccent()),
                minimumSize: MaterialStateProperty.all(Size(buttonWidth, buttonHeight))
            ),
            child: Text(
              "Connect to Device",
              style: TextStyle(
                color: KCColorTheme.getDarkColor(),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
