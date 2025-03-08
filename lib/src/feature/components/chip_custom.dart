import 'dart:ui';

import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';

Widget ChipCustom({
  required Color color,
  required String title,
  EdgeInsets? padding,
  Function()? onTap,
  bool isActive = false,
  Widget? suffixIcon,
  Widget? perfixIcon,
  TextStyle? titleStyle,
  bool isBorder = true,
  BorderRadius? borderRadius,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: onTap != null ? 3.padding : 0.padding,
      decoration: onTap != null
          ? BoxDecoration(
        borderRadius: 30.radius,
        border: Border.all(
          color: isActive ? color : Colors.transparent,
        ),
      )
          : null,
      child: Container(
        padding: padding ?? (6.paddingHor + 2.5.paddingVer),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: isBorder
              ? Border.all(
            color: color.withOpacity(0.2),
          )
              : null,
          borderRadius: borderRadius ?? 20.radius,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (perfixIcon != null) perfixIcon,
            if (perfixIcon != null) 4.width,
            Text(
              title,
              style: titleStyle?.copyWith(color: color) ??
                  StyleApp.normal(color: color, fontSize: 12)
            ).flexible(),
            if (suffixIcon != null) suffixIcon,
          ],
        ),
      ),
    ),
  );
}