import 'dart:ui';
import 'package:flutter/material.dart';

/* Author: Natalie Koenig
 * Last Updated: 4/26/2023
 * Description: A class to hold the app's color scheme functions
 */

class KCColorTheme {

  //************ Wrapper Color Palette Functions ************
  // These functions will let you change which colors are treated as primary,
  // secondary, and accent colors. So you can change the appearance without
  // having to go back and change every individual function.

  static Color getDarkColor() {
    return getSpaceCadetBlue();
  }

  static Color getLightColor() {
    return getSeasalt();
  }

  static Color getYellowAccent() {
    return getHunyadiYellow();
  }

  static Color getBlueAccent() {
    return getVistaBlue();
  }

  static Color getRedAccent() {
    return getBittersweet();
  }

  //************ Start of Color Palette Functions ************
  // The functions below
  static Color getSeasalt() {
    return Color.fromRGBO(248, 247, 249, 1.0);
  }

  static Color getVistaBlue() {
    return Color.fromRGBO(142, 162, 255, 1.0);
  }

  static Color getSpaceCadetBlue() {
    return Color.fromRGBO(43, 45, 66, 1.0);
  }

  static Color getRaisinBlack() {
    return Color.fromRGBO(32, 34, 49, 1.0);
  }

  static Color getBittersweet() {
    return Color.fromRGBO(228, 112, 104, 1.0);
  }

  static Color getHunyadiYellow() {
    return Color.fromRGBO(250, 177, 65, 1.0);
  }

  //~~~~~~~~~~~~ Status Message Colors ~~~~~~~~~~~~

  static Color getGreen(){
    return Color.fromRGBO(88, 129, 87, 1.0);
  }

  static Color getGray() {
    return Color.fromRGBO(162, 156, 157, 1.0);
  }

  static Color getRed() {
    return Color.fromRGBO(255, 0, 0, 1.0);
  }
}