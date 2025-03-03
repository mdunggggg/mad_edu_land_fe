import 'package:flutter/material.dart';

enum FaIconType {
  thin(FontWeight.w100),
  light(FontWeight.w300),
  regular(FontWeight.w400),
  solid(FontWeight.w900);

  final FontWeight weight;

  const FaIconType(this.weight);
}

class FaIcon extends StatelessWidget {
  const FaIcon({
    super.key,
    required this.iconCode,
    this.color,
    this.size = 16,
    this.type = FaIconType.solid,
  });

  final String iconCode;
  final Color? color;
  final double size;
  final FaIconType type;

  @override
  Widget build(BuildContext context) {
    return Text(
      String.fromCharCode(int.parse(iconCode, radix: 16)),
      style: TextStyle(
        fontFamily: 'FontAwesome',
        color: color,
        fontSize: size,
        fontWeight: type.weight,
      ),
      textAlign: TextAlign.center,
    );
  }
}
