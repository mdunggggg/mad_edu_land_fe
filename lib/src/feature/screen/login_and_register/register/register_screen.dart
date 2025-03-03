import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/app_input_password.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/screen/login_and_register/register/register_bloc.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_string.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';
import '../../../../resources/constant/app_styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key, required this.onLogin});

  final VoidCallback onLogin;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with AutomaticKeepAliveClientMixin {
  final bloc = RegisterBloc();
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildRegisterType(),
            16.height,
            AppInput(
              label: AppStrings.fullName,
              hintText: AppStrings.enterFullName,
              prefixIcon: const FaIcon(
                iconCode: 'f007',
                type: FaIconType.light,
                color: Color(AppColors.c9C),
              ),
            ),
            16.height,
            AppInput(
              label: AppStrings.username,
              hintText: AppStrings.chooseUsername,
              required: true,
              prefixIcon: const FaIcon(
                iconCode: '23',
                type: FaIconType.light,
                color: Color(AppColors.c9C),
              ),
            ),
            16.height,
            AppInputPassword(
              label: AppStrings.password,
              hintText: AppStrings.createPassword,
              required: true,
              prefixIcon: const FaIcon(
                iconCode: 'f023',
                color: Color(AppColors.c9C),
              ),
            ),
            16.height,
            AppInputPassword(
              label: AppStrings.confirmPassword,
              hintText: AppStrings.confirmPassword,
              required: true,
              prefixIcon: const FaIcon(
                iconCode: 'f023',
                color: Color(AppColors.c9C),
              ),
              validate: (value) {
                if(value.isEmptyOrNull) return AppStrings.fieldRequired;
                // Compare 2 password

              },
            ),
            16.height,
            BlocBuilder<RegisterBloc, BlocState>(
              bloc: bloc,
              builder: (context, state) {
                if (bloc.type == RegisterType.teacher) return const SizedBox();
                return AppInput(
                  label: AppStrings.gradeLevel,
                  hintText: AppStrings.selectYourGrade,
                  prefixIcon: const FaIcon(
                    iconCode: 'f02d',
                    color: Color(AppColors.c9C),
                  ),
                  suffixIcon: const FaIcon(
                    iconCode: 'f107',
                    color: Color(AppColors.c9C),
                  ),
                );
              },
            ),
            16.height,
            PrimaryButton(
              text: AppStrings.createAccount,
              onClick: () {
                if (!key.currentState!.validate()) return;
              },
              color: const Color(AppColors.c3B),
              paddingVer: 16,
              textStyle: StyleApp.normal(color: const Color(AppColors.cFFFF)),
            ).size(width: double.infinity),
            16.height,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '${AppStrings.alreadyHaveAccount} ',
                style: StyleApp.normal(),
                children: [
                  TextSpan(
                    text: AppStrings.txtLogin,
                    style: StyleApp.normal(
                      color: const Color(
                        AppColors.c3B,
                      ),
                    ),
                    recognizer: TapGestureRecognizer()..onTap = widget.onLogin,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  Container _buildRegisterType() {
    return Container(
      padding: 12.padding,
      margin: 32.paddingHor,
      decoration: BoxDecoration(
        color: const Color(AppColors.cF9),
        borderRadius: 16.radius,
      ),
      child: BlocBuilder<RegisterBloc, BlocState>(
        bloc: bloc,
        builder: (context, state) {
          return Row(
            children: [
              _buildItem(
                'f19d',
                AppStrings.student,
                bloc.type == RegisterType.student,
              ).expanded(),
              16.width,
              _buildItem(
                'f51c',
                AppStrings.teacher,
                bloc.type == RegisterType.teacher,
              ).expanded(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildItem(String code, String title, bool isActive) {
    final colorText =
        isActive ? const Color(AppColors.c3B) : const Color(AppColors.c9C);
    final colorBg =
        isActive ? const Color(AppColors.cDBE) : const Color(AppColors.cF3);
    return InkWell(
      onTap: () {
        bloc.type = RegisterType.values[1 -
            RegisterType.values.indexWhere(
              (element) => bloc.type == element,
            )];
      },
      child: Container(
        padding: 8.padding,
        decoration: BoxDecoration(
          color: colorBg,
          borderRadius: 8.radius,
        ),
        child: Column(
          children: [
            FaIcon(
              iconCode: code,
              color: colorText,
            ),
            Text(
              title,
              style: StyleApp.normal(color: colorText),
            ),
          ],
        ),
      ),
    );
  }
}
