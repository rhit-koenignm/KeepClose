import 'package:flutter/material.dart';

import '../components/kc_appbar.dart';
import '../components/kc_elevated_button.dart';
import '../components/keep_close_color_theme.dart';

class KeepCloseNotificationsSettingsPage extends StatefulWidget {
  const KeepCloseNotificationsSettingsPage({Key? key}) : super(key: key);

  @override
  State<KeepCloseNotificationsSettingsPage> createState() => _KeepCloseNotificationsSettingsPageState();
}

class _KeepCloseNotificationsSettingsPageState extends State<KeepCloseNotificationsSettingsPage> {
  final double widgetSpacing = 40;
  double buttonWidth = 100;
  double buttonHeight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // For our appbar, I've utilized my custom component KCAppBar
      appBar: KCAppBar(
          title: "Notification Settings",
          backgroundColor: KCColorTheme.getDarkColor(),
          accentColor: KCColorTheme.getLightColor(),
          fontSize: 30
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          KCElevatedButton(
            fontSize: 15,
            buttonTitle: "Confirm Changes",
            onPress: () {
              print("Let's confirm some changes!");
            },
            minWidth: buttonWidth,
            minHeight: buttonHeight,
          ),
        ],
      ),
    );
  }
}
