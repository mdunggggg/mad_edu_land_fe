import 'package:flutter/material.dart';

abstract class AppStyles {
  static const String fontFamily = 'Roboto';
  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightBold = FontWeight.w700;

  static TextStyle h1(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 60,
        fontWeight: fontWeightBold,
        color: color,
      );

  static TextStyle h2(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 32,
        fontWeight: fontWeightMedium,
        color: color,
      );

  static TextStyle h3(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 28,
        fontWeight: fontWeightMedium,
        color: color,
      );

  static TextStyle h4(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 24,
        fontWeight: fontWeightBold,
        color: color,
      );

  static TextStyle title1(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 20,
        fontWeight: fontWeightBold,
        color: color,
      );

  static TextStyle title2(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: fontWeightBold,
        color: color,
      );

  static TextStyle title3(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        fontWeight: fontWeightMedium,
        color: color,
      );

  static TextStyle subtitle1(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        fontWeight: fontWeightBold,
        color: color,
      );

  static TextStyle subtitle2(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        fontWeight: fontWeightMedium,
        color: color,
      );

  static TextStyle subtitle3(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 13,
        fontWeight: fontWeightBold,
        color: color,
      );

  static TextStyle subtitle4(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 13,
        fontWeight: fontWeightMedium,
        color: color,
      );

  static TextStyle body1(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 13,
        fontWeight: fontWeightRegular,
        color: color,
      );

  static TextStyle body2(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 13,
        fontWeight: fontWeightMedium,
        color: color,
      );

  static TextStyle caption1(Color color, {TextDecoration? decoration}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: fontWeightRegular,
        color: color,
        decoration: decoration,
      );

  static TextStyle caption2(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: fontWeightMedium,
        color: color,
      );

  static TextStyle caption3(Color color, {Color? backgroundColor}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 10,
        fontWeight: fontWeightMedium,
        color: color,
        backgroundColor: backgroundColor,
      );

  static TextStyle otherMedium(double size, Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: fontWeightMedium,
        color: color,
      );

  static TextStyle otherRegular(double size, Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: fontWeightRegular,
        color: color,
      );

  static TextStyle otherBold(double size, Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: fontWeightBold,
        color: color,
      );
}
