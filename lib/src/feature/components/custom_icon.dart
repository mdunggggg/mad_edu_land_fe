import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.code, required this.color});

  final String code;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.2),
      ),
      alignment: Alignment.center,
      child: FaIcon(iconCode: code, color: color,),
    );
  }
}
