import 'package:flutter/material.dart';

class KCAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Color backgroundColor;
  final Color accentColor;
  final double fontSize;

  KCAppBar(
      {Key? key, required this.title, required this.backgroundColor, required this.accentColor, required this.fontSize})
      : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.horizontal,
        children: [
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
          size: 50
      ),
    );
  }
}
