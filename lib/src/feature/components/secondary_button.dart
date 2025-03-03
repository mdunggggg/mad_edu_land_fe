import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

import '../../resources/constant/app_styles.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onClick;
  final double paddingHor;
  final double paddingVer;
  final String text;
  final Color color;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onClick,
    this.paddingHor = 16,
    this.paddingVer = 8, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onClick,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color),
        shape: RoundedRectangleBorder(
          borderRadius: 16.radius,
        ),
        padding: paddingHor.paddingHor + paddingVer.paddingVer,
      ),
      child: Text(
        text,
        maxLines: 1,
        softWrap: false,
        style: StyleApp.normal(),
      ),
    );
  }
}