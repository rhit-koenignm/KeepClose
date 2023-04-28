import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:keep_close/components/kc_elevated_button.dart';
import 'package:keep_close/components/kc_text_form_field.dart';
import 'package:permission_handler/permission_handler.dart';

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
  final HashMap<String, BluetoothDevice> devicesMap = HashMap();
  FlutterBluePlus flutterBlue = FlutterBluePlus.instance;

  Future<void> turnOnBluetooth() async {
    print("Starting by asking for bluetooth permissions");
    // if(await Permission.bluetoothConnect.isGranted) {
    //   FlutterBluePlus.instance.turnOn();
    //   print("Permissions already granted, turning on bluetooth");
    // } else {
      print("Permissions not granted, requesting permission");
      PermissionStatus permissionStatus = await Permission
          .bluetoothConnect.request();
      if (permissionStatus == PermissionStatus.granted) {
        print("Permission granted, turning bluetooth on now");
        FlutterBluePlus.instance.turnOn();
      }
    // }
  }

  void scanForDevices() {
    print("Scanning for devices");
    flutterBlue.startScan(timeout: Duration(seconds: 3));

    var subscription = flutterBlue.scanResults.listen((results) {
      for(ScanResult r in results) {
        if(r.device.name.isNotEmpty && r.device.name.trim().isNotEmpty) {
          if(!devicesMap.containsKey(r.device.name)) {
            print("${r.device.name} found! rssi: ${r.rssi}");
            devicesMap.putIfAbsent(r.device.name, () => r.device);
          }
        }
      }
    });
    flutterBlue.stopScan();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // For our appbar, I've utilized my custom component KCAppBar
      appBar: KCAppBar(
        title: "Device Setup",
        backgroundColor: KCColorTheme.getDarkColor(),
        accentColor: KCColorTheme.getLightColor(),
        fontSize: 28,
        hasIcon: true,
        iconData: Icons.devices_other_rounded,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            child: KCTextFormField(labelText: "Enter Device Name"),
          ),
          KCElevatedButton(
            buttonTitle: "Search for Devices",
            onPress: () async {
              print("Pressed Search Button");
              await turnOnBluetooth();

              scanForDevices();
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
