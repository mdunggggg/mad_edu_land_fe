import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

class AnswerChoice extends StatelessWidget {
  const AnswerChoice({
    super.key,
    required this.title,
    required this.color,
    this.textColor,
  });

  final String title;
  final Color color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: StyleApp.normal(fontSize: 16, color: textColor),
      ),
    );
  }
}
