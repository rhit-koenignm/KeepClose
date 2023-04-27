import 'package:flutter/material.dart';
import 'package:keep_close/components/kc_labeled_switch.dart';

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
  double labelFontSize = 18;

  bool isSoundEnabled = false;
  bool isLightEnabled = false;
  bool isVibrationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // For our appbar, I've utilized my custom component KCAppBar
      appBar: KCAppBar(
          title: "Settings",
          backgroundColor: KCColorTheme.getDarkColor(),
          accentColor: KCColorTheme.getLightColor(),
          fontSize: 30,
        hasIcon: true,
        iconData: Icons.circle_notifications_outlined,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(""),
            ),
            KCLabeledSwitch(
                labelText: "Sound Alarm",
                activeColor: KCColorTheme.getYellowAccent(),
                onChange: (bool value) {
                  setState(() {
                    print("Sound switch changed to $value");
                    isSoundEnabled = value;
                  });
                },
                fontSize: 20
            ),
            KCLabeledSwitch(
                labelText: "Light Alarm",
                activeColor: KCColorTheme.getYellowAccent(),
                onChange: (bool value) {
                  setState(() {
                    print("Light switch changed to $value");
                    isLightEnabled = value;
                  });
                },
                fontSize: 20
            ),
            KCLabeledSwitch(
                labelText: "Vibration Alarm",
                activeColor: KCColorTheme.getYellowAccent(),
                onChange: (bool value) {
                  setState(() {
                    print("Vibration switch changed to $value");
                    isVibrationEnabled = value;
                  });
                },
                fontSize: 20
            ),
            KCElevatedButton(
              fontSize: 15,
              buttonTitle: "Confirm Changes",
              onPress: () {
                print("Let's confirm some changes!");
                print("Confirm hit with sound=$isSoundEnabled, light=$isLightEnabled, vibration=$isVibrationEnabled");
              },
              minWidth: buttonWidth,
              minHeight: buttonHeight,
            ),
          ],
        ),
      )
    );
  }
}
