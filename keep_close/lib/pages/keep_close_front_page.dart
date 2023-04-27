import 'package:flutter/material.dart';
import 'package:keep_close/components/kc_appbar.dart';
import 'package:keep_close/components/kc_elevated_button.dart';
import 'package:keep_close/components/keep_close_color_theme.dart';
import 'package:keep_close/pages/keep_close_notifications_settings_page.dart';
import 'package:keep_close/pages/keep_close_setup_page.dart';

/* Author: Natalie Koenig
 * Last Updated: 4/26/2023
 * Description: A class to hold the appearance and functionality
 * behind the app's front page
 */

class KeepCloseFrontPage extends StatefulWidget {
  final String title;
  const KeepCloseFrontPage({Key? key, required this.title}) : super(key: key);

  @override
  State<KeepCloseFrontPage> createState() => _KeepCloseFrontPageState();
}

class _KeepCloseFrontPageState extends State<KeepCloseFrontPage> {
  double buttonWidth = 250;
  double buttonHeight = 70;
  double buttonSpacing = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // For our appbar, I've utilized my custom component KCAppBar
      appBar: KCAppBar(
          title: widget.title,
          backgroundColor: KCColorTheme.getDarkColor(),
          accentColor: KCColorTheme.getLightColor(),
          fontSize: 30
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            KCElevatedButton(
                buttonTitle: "Set Up Device",
                onPress: () async {
                  print("Pressed Setup device button");
                  await Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return KeepCloseSetupPage();
                    }));
                },
                minWidth: buttonWidth,
                minHeight: buttonHeight,
                fontSize: 20
            ),
            KCElevatedButton(
                buttonTitle: "Notification Settings",
                onPress: () async {
                  print("Pressed Notification Settings button");
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return KeepCloseNotificationsSettingsPage();
                      }));
                },
                minWidth: buttonWidth,
                minHeight: buttonHeight,
                fontSize: 20
            ),
          ],
        ),
      ),
    );
  }
}
