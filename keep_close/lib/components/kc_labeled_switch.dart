import 'package:flutter/material.dart';
import 'keep_close_color_theme.dart';

class KCLabeledSwitch extends StatefulWidget {
  final String labelText;
  final Function(bool) onChange;
  final double fontSize;
  final Color activeColor;

  const KCLabeledSwitch({Key? key, required this.labelText, required this.onChange, required this.fontSize, required this.activeColor}) : super(key: key);

  @override
  State<KCLabeledSwitch> createState() => _KCLabeledSwitchState();
}

class _KCLabeledSwitchState extends State<KCLabeledSwitch> {
  bool switchVal = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        clipBehavior: Clip.hardEdge,
        children: <Widget>[
          Text(
            widget.labelText,
            style: TextStyle(
                color: KCColorTheme.getDarkColor(),
                fontSize: widget.fontSize,
                fontWeight: FontWeight.bold
            ),
          ),
          Switch(
            value: switchVal,
            activeColor: widget.activeColor,
            onChanged: (bool value) {
              switchVal = value;
              widget.onChange(switchVal);
            },
          )
        ],
      ),
    );
  }
}

