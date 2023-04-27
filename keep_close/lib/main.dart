import 'package:flutter/material.dart';
import 'package:keep_close/components/keep_close_color_theme.dart';
import 'package:keep_close/pages/keep_close_front_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keep Close',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
        primaryColor: KCColorTheme.getYellowAccent(),
        hintColor: KCColorTheme.getYellowAccent(),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: KCColorTheme.getYellowAccent()),
          floatingLabelStyle: TextStyle(color: KCColorTheme.getYellowAccent()),
          hintStyle: TextStyle(color: KCColorTheme.getYellowAccent()),
          focusColor: KCColorTheme.getYellowAccent(),

        )
      ),
      debugShowCheckedModeBanner: false,
      home: const KeepCloseFrontPage(title: 'Keep Close'),
    );
  }
}