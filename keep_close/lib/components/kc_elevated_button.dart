import 'package:flutter/material.dart';

import 'keep_close_color_theme.dart';

class KCElevatedButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPress;
  final double minWidth;
  final double minHeight;
  final double fontSize;

  const KCElevatedButton({Key? key, required this.buttonTitle, required this.onPress, required this.minWidth, required this.minHeight, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Pressed $buttonTitle Button");
        onPress();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(KCColorTheme.getYellowAccent()),
          minimumSize: MaterialStateProperty.all(Size(minWidth, minHeight))
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(
          color: KCColorTheme.getDarkColor(),
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
