import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/screen/login_and_register/login/login_bloc.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/bloc_state.dart';
import '../../../../bloc/check_status_bloc.dart';
import '../../../components/app_input_password.dart';
import '../../../components/fa_icon.dart';
import '../login_and_register_screen.dart';
import '../register/register_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.onRegister, required this.role});

  final VoidCallback onRegister;
  final Role role;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with AutomaticKeepAliveClientMixin {

  final key = GlobalKey<FormState>();
  final bloc = LoginBloc();
  final registerBloc = RegisterBloc();
  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  void initState() {
    bloc.type = widget.role;
    if(kDebugMode) {
      usernameCtrl.text = bloc.type == Role.student ? 'hocsinh' : 'giaovien';
      passwordCtrl.text = '1';
    }
    super.initState();
  }



  @override
  void dispose() {
    bloc.close();
    usernameCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, BlocState>(
      bloc: bloc,
      listener: (context, state) {
        CheckStateBloc.check(
          context,
          state,
          msg: state.msg,
          success: () {
            print('Login success');
          },
          route: bloc.type == Role.student
              ? const StudentHomepageRoute()
              : const  TeacherHomepageRoute(),
        );
      },
      child: Form(
        key: key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildRole(),
            16.height,
            Image.asset(
              AppImages.imgLogin,
              height: 160,
            ),
            8.height,
            AppInput(
              label: AppStrings.usernameOrEmail,
              hintText: AppStrings.enterUsernameOrEmail,
              required: true,
              controller: usernameCtrl,
            ),
            16.height,
            AppInputPassword(
              label: AppStrings.password,
              hintText: AppStrings.enterPassword,
              required: true,
              controller: passwordCtrl,
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
              onClick: () {
                if (!key.currentState!.validate()) return;
                bloc.login(
                  username: usernameCtrl.text,
                  password: passwordCtrl.text,
                );
              },
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
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  Container _buildRole() {
    return Container(
      padding: 12.padding,
      margin: 32.paddingHor,
      decoration: BoxDecoration(
        color: const Color(AppColors.cF9),
        borderRadius: 16.radius,
      ),
      child: BlocBuilder<LoginBloc, BlocState>(
        bloc: bloc,
        builder: (context, state) {
          return Row(
            children: [
              _buildItem(
                'f19d',
                AppStrings.student,
                bloc.type == Role.student,
              ).expanded(),
              16.width,
              _buildItem(
                'f51c',
                AppStrings.teacher,
                bloc.type == Role.teacher,
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
        bloc.type = Role.values[1 -
            Role.values.indexWhere(
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
