import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

import '../../resources/constant/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onClick;
  final double paddingHor;
  final double paddingVer;
  final String text;
  final Color color;
  final TextStyle? textStyle;


  const PrimaryButton({
    super.key,
    required this.text,
    required this.onClick,
    this.textStyle,
    this.paddingHor = 16,
    this.paddingVer = 8, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: 16.radius,
        ),
        padding: paddingHor.paddingHor + paddingVer.paddingVer,
      ),
      child: Text(
        text,
        maxLines: 1,
        softWrap: false,
        style: textStyle ?? StyleApp.normal(),
      ),
    );
  }
}
