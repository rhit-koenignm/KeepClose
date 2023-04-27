import 'package:flutter/material.dart';
import 'package:keep_close/components/keep_close_color_theme.dart';

class KCAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Color backgroundColor;
  final Color accentColor;
  final double fontSize;
  final bool hasIcon;
  final IconData? iconData;

  KCAppBar(
      {Key? key, required this.title, required this.backgroundColor, required this.accentColor, required this.fontSize, required this.hasIcon, this.iconData})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.horizontal,
        children: hasIcon ?
            <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: accentColor,
                    fontSize: fontSize
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                iconData,
                color: KCColorTheme.getLightColor(),
              ),
            ]
        : <Widget>[
          Text(
            title,
            style: TextStyle(
              color: accentColor,
              fontSize: fontSize
            ),
          )
        ],
      ),
      actionsIconTheme: IconThemeData(
        color: accentColor,
        size: 50
      ),
      automaticallyImplyLeading: true,
      backgroundColor: backgroundColor,
      iconTheme: IconThemeData(
          color: accentColor,
          size: 40
      ),
    );
  }
}
