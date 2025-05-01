import 'package:flutter/material.dart';

extension ExtNum on num {

  static const MAX_FRACTION_DIGITS = 4;

  BorderRadius get radius => BorderRadius.circular(toDouble());
  BorderRadius get radiusTop =>
      BorderRadius.vertical(top: Radius.circular(toDouble()));
  BorderRadius get radiusBottom =>
      BorderRadius.vertical(bottom: Radius.circular(toDouble()));
  BorderRadius get radiusLeft =>
      BorderRadius.horizontal(left: Radius.circular(toDouble()));
  BorderRadius get radiusRight =>
      BorderRadius.horizontal(right: Radius.circular(toDouble()));
  BorderRadius get radiusTopLeft =>
      BorderRadius.only(topLeft: Radius.circular(toDouble()));
  BorderRadius get radiusTopRight =>
      BorderRadius.only(topRight: Radius.circular(toDouble()));
  BorderRadius get radiusBottomLeft =>
      BorderRadius.only(bottomLeft: Radius.circular(toDouble()));
  BorderRadius get radiusBottomRight =>
      BorderRadius.only(bottomRight: Radius.circular(toDouble()));

  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());

  EdgeInsets get paddingTop => EdgeInsets.only(top: toDouble());
  EdgeInsets get paddingLeft => EdgeInsets.only(left: toDouble());
  EdgeInsets get paddingRight => EdgeInsets.only(right: toDouble());
  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get paddingVer => EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get paddingHor => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get padding => EdgeInsets.all(toDouble());
  EdgeInsets get paddingSymmetric => EdgeInsets.symmetric(vertical: toDouble(), horizontal: toDouble());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get seconds => Duration(seconds: toInt());
  Duration get minutes => Duration(minutes: toInt());
  Duration get hours => Duration(hours: toInt());


  String formatHHmmss() {
    final hours = this ~/ Duration.secondsPerHour;
    final minutes = (this ~/ Duration.secondsPerMinute) % Duration.minutesPerHour;
    final seconds = this % Duration.secondsPerMinute;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  String formatScore() {
    final double percentage = this*10;
    final String percentageString = percentage.toStringAsFixed(2);
    if (percentageString.endsWith(".00")) {
      return percentageString.substring(0, percentageString.length - 3);
    } else if (percentageString.endsWith("0")) {
      return percentageString.substring(0, percentageString.length - 1);
    } else {
      return percentageString;
    }
  }

  String formatTimeTakenToMMss() {
    final minutes = this ~/ Duration.secondsPerMinute;
    final seconds = this % Duration.secondsPerMinute;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  String formatTimeTakenToMMss2() {
    final minutes = this ~/ Duration.secondsPerMinute;
    final seconds = this % Duration.secondsPerMinute;
    return '${minutes.toString().padLeft(1, '0')}m ${seconds.toString().padLeft(1, '0')}s';
  }

  bool get isPositive => this > 0;

  bool get isNegative => this < 0;

}

extension ExtNumOrNull on num? {
  num get validator => this ?? 0;
}