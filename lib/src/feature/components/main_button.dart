import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key,
      required this.buttonTitle,
      required this.onPressed,
      required this.backgroundColor,
      this.textStyle,
      this.icon});

  final VoidCallback onPressed;
  final String buttonTitle;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final FaIcon? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? const SizedBox.shrink(),
          const SizedBox(width: 8),
          Text(
            buttonTitle,
            style:
                textStyle ?? const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
