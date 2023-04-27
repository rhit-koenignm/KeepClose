import 'package:flutter/material.dart';

import 'keep_close_color_theme.dart';

class KCTextFormField extends StatelessWidget {
  final String labelText;

  const KCTextFormField({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: KCColorTheme.getYellowAccent(),
      decoration: InputDecoration(
        focusColor: KCColorTheme.getYellowAccent(),
        hoverColor: KCColorTheme.getYellowAccent(),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: KCColorTheme.getYellowAccent())
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: KCColorTheme.getYellowAccent())
        ),
        labelText: labelText,
      ),
      style: TextStyle(
          color: KCColorTheme.getYellowAccent(),
          decorationColor: KCColorTheme.getYellowAccent()
      ),
    );
  }
}
