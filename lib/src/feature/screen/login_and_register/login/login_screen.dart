import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../components/app_input_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.onRegister});

  final VoidCallback onRegister;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppImages.imgLogin,
          height: 192,
        ),
        8.height,
        AppInput(
          label: AppStrings.usernameOrEmail,
          hintText: AppStrings.enterUsernameOrEmail,
        ),
        16.height,
        AppInputPassword(
          label: AppStrings.password,
          hintText: AppStrings.enterPassword,
        ),
        16.height,
        Text(
          AppStrings.forgotPassword,
          style: StyleApp.normal(color: const Color(AppColors.c3B)),
          textAlign: TextAlign.right,
        ),
        16.height,
        PrimaryButton(
          text: AppStrings.txtLogin,
          onClick: () {},
          color: const Color(AppColors.c3B),
          paddingVer: 16,
          textStyle: StyleApp.normal(color: const Color(AppColors.cFFFF)),
        ),
        const Spacer(),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: '${AppStrings.dontHaveAccount} ',
            style: StyleApp.normal(),
            children: [
              TextSpan(
                text: AppStrings.registerNow,
                style: StyleApp.normal(
                  color: const Color(
                    AppColors.c3B,
                  ),
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = widget.onRegister,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
