import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';

import '../../resources/constant/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onClick;
  final double paddingHor;
  final double paddingVer;
  final String text;
  final Color color;
  final TextStyle? textStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onClick,
    this.textStyle,
    this.paddingHor = 16,
    this.paddingVer = 8,
    required this.color,
    this.prefixIcon,
    this.suffixIcon,
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...[
            prefixIcon!,
            const SizedBox(width: 8),
          ],
          Text(
            text,
            maxLines: 1,
            softWrap: false,
            style: textStyle ?? StyleApp.normal(),
          ),
          if (suffixIcon != null) ...[
            const SizedBox(width: 8),
            suffixIcon!,
          ],
        ],
      ),
    );
  }
}
