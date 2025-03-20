import 'package:flutter/material.dart';

class BaseCheckbox extends StatelessWidget {
  const BaseCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.radius,
  });

  final bool value;
  final double? radius;
  final Function(bool? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 4)),
      side: MaterialStateBorderSide.resolveWith(
        (states) => const BorderSide(color: Colors.black),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      splashRadius: radius ?? 8,
      checkColor: Colors.blue,
      activeColor: Colors.white,
      value: value,
      onChanged: (value) {
        onChanged.call(value);
      },
    );
  }
}
