import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    super.key,
    this.initialValue,
    this.label,
    this.padding,
    this.radius,
    required this.hintText,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.validate,
    this.textInputType = TextInputType.text,
    this.required = false,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.onConfirm,
    this.onTapOutside,
    this.inputFormatters,
    this.borderColor,
    this.bgColor,
    this.maxLines,
    this.hintColor,
    this.textColor,
    this.titleStyle,
    this.contentPadding,
  });

  final String? initialValue;
  final String? label;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String? value)? validate;
  final bool readOnly;
  final bool required;
  final Function? onTap;
  final Function(String)? onChanged;
  final Function(String)? onConfirm;
  final Function()? onTapOutside;
  final TextAlign textAlign = TextAlign.start;
  final List<TextInputFormatter>? inputFormatters;
  final Color? borderColor;
  final Color? bgColor;
  final int? maxLines;
  final Color? hintColor;
  final Color? textColor;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null)
          RichText(
            text: TextSpan(
              text: label,
              style: titleStyle ?? StyleApp.medium(),
              children: [
                if (required)
                  TextSpan(
                    text: ' *',
                    style: StyleApp.medium(color: Colors.red),
                  )
              ],
            ),
          ),
        if (label != null) 8.height,
        TextFormField(
          initialValue: initialValue,
          readOnly: readOnly,
          onTap: () {
            if (onTap != null) onTap?.call();
          },
          onChanged: (String? value) {
            if (value != null && onChanged != null) {
              onChanged!(value);
            }
          },
          onFieldSubmitted: (value) {
            if (onConfirm != null) {
              onConfirm!(value);
            }
          },
          onTapOutside: (event) =>
              onTapOutside?.call() ??
              FocusManager.instance.primaryFocus?.unfocus(),
          keyboardType: textInputType,
          controller: controller,
          textAlign: textAlign,
          validator: required
              ? (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.fieldRequired;
                  }
                  if (validate != null) {
                    return validate!(value);
                  }
                  return null;
                }
              : null,
          style:
              StyleApp.normal(fontSize: 16, color: textColor ?? Colors.black),
          inputFormatters: inputFormatters,
          maxLines: maxLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: bgColor ?? const Color(AppColors.cF9),
            hintText: hintText,
            hintStyle: StyleApp.normal(
                fontSize: 16, color: hintColor ?? const Color(AppColors.cAD)),
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: radius?.radius ?? 12.radius,
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.3),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: radius?.radius ?? 12.radius,
              borderSide: BorderSide(
                color: borderColor ?? Colors.transparent,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: radius?.radius ?? 12.radius,
              borderSide: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            contentPadding: contentPadding ?? (8.paddingHor + 12.paddingVer),
            suffixIcon: suffixIcon?.padding(12.paddingHor),
            prefixIcon: prefixIcon?.padding(12.paddingHor),
            suffixIconConstraints: const BoxConstraints(
              minHeight: 16,
              minWidth: 16,
            ),
            prefixIconConstraints: const BoxConstraints(
              minHeight: 16,
              minWidth: 16,
            ),
          ),
        ),
      ],
    );
  }
}
