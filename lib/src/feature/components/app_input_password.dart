import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/constant/app_colors.dart';

class AppInputPassword extends StatelessWidget {
  AppInputPassword({
    super.key,
    this.initialValue,
    this.label,
    this.padding,
    this.radius,
    required this.hintText,
    this.controller,
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
  });

  final String? initialValue;
  final String? label;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType textInputType;
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

  final ValueNotifier<bool> showPass = ValueNotifier(false);

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
              style: StyleApp.medium(),
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
        ValueListenableBuilder(valueListenable: showPass, builder: (context, value, child) {
          return TextFormField(
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
            validator: validate,
            obscureText: !value,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(AppColors.cF9),
              hintText: hintText,
              hintStyle: StyleApp.light(),
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: 16.radius,
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: 16.radius,
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: 16.radius,
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              contentPadding: 8.paddingHor + 12.paddingVer,
              suffixIcon: InkWell(
                onTap: () => showPass.value = !showPass.value,
                child: Icon(value ? Icons.remove_red_eye : Icons
                    .remove_red_eye_outlined),
              ).padding(6.paddingHor),
              prefixIcon: prefixIcon?.padding(6.paddingHor),
              suffixIconConstraints: const BoxConstraints(
                minHeight: 16,
                minWidth: 16,
              ),
              prefixIconConstraints: const BoxConstraints(
                minHeight: 16,
                minWidth: 16,
              ),
            ),
          );
        },)

      ],
    );
  }
}
