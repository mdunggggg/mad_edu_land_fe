import 'package:flutter/material.dart';

class StyleApp {
  StyleApp._();
  static const FontWeight _LIGHT = FontWeight.w300;
  static const FontWeight _DEFAULT = FontWeight.w400;
  static const FontWeight _MEDIUM = FontWeight.w500;
  static const FontWeight _SEMIBOLD = FontWeight.w600;
  static const FontWeight _BOLD = FontWeight.w700;
  static const String _font = 'Roboto';

  static TextStyle light({
    double fontSize = 14,
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color ?? Colors.black,
      fontWeight: _LIGHT,
      decoration: decoration,
      fontFamily: _font,
    );
  }

  static TextStyle normal({
    double fontSize = 14,
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color ?? Colors.black,
      fontWeight: _DEFAULT,
      decoration: decoration,
      fontFamily: _font,
    );
  }

  static TextStyle normalItalic({
    double fontSize = 14,
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color ?? Colors.black,
      fontWeight: _DEFAULT,
      decoration: decoration,
      fontFamily: _font,
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle boldItalic({
    double fontSize = 14,
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color ?? Colors.black,
      fontWeight: _BOLD,
      decoration: decoration,
      fontFamily: _font,
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle medium({
    double fontSize = 14,
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color ?? Colors.black,
      fontWeight: _MEDIUM,
      decoration: decoration,
      fontFamily: _font,
    );
  }

  static TextStyle semibold({
    double fontSize = 14,
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color ?? Colors.black,
      fontWeight: _SEMIBOLD,
      decoration: decoration,
      fontFamily: _font,
    );
  }

  static TextStyle bold({
    double fontSize = 14,
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color ?? Colors.black,
      fontWeight: _BOLD,
      decoration: decoration,
      fontFamily: _font,
    );
  }
}