import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/components/secondary_button.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

import '../../../resources/constant/app_styles.dart';
import '../../../router/router.gr.dart';
import '../login_and_register/login_and_register_screen.dart';

@RoutePage()
class SelectRoleScreen extends StatelessWidget {

  const SelectRoleScreen({super.key, required this.isRegister});
  final bool isRegister;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cFFFF),
      appBar: AppBar(
        backgroundColor: const Color(AppColors.cFFFF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.push(const WelcomeRoute());
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Image.asset(
            AppImages.imgRole,
            height: 200,
          ),
          12.height,
          Text(
            AppStrings.roleQuestion,
            style: StyleApp.bold(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 224,
              child: PrimaryButton(
                text: AppStrings.student,
                onClick: () {
                  context.router.push(LoginAndRegisterRoute(tabItem: isRegister ? TabItem.register : TabItem.login, role: Role.student));
                },
                color: const Color(AppColors.cFFD),
              ),
            ),
          ),
          4.height,
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 224,
              child: PrimaryButton(
                text: AppStrings.teacher,
                onClick: () {
                  context.router.push(LoginAndRegisterRoute(tabItem: isRegister ? TabItem.register : TabItem.login, role: Role.teacher));
                },
                color: const Color(AppColors.c73),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

}
