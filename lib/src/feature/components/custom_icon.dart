import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.code,
    required this.color,
    this.radius,
  });

  final String code;
  final Color color;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        shape: radius == null ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: radius?.radius,
      ),
      alignment: Alignment.center,
      child: FaIcon(
        iconCode: code,
        color: color,
      ),
    );
  }
}
