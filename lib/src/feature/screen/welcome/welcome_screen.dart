import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/components/secondary_button.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

import '../../../resources/constant/app_strings.dart';
import '../login_and_register/login_and_register_screen.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Image.asset(
            AppImages.imgWelcome,
            height: 240,
          ),
          8.height,
          Text(
            AppStrings.milestoneText,
            style: StyleApp.bold(),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 160,
              child: PrimaryButton(
                text: AppStrings.txtLogin,
                onClick: () {
                  context.router.push(LoginAndRegisterRoute());
                },
                color: const Color(AppColors.cFFD),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 160,
              child: SecondaryButton(
                text: AppStrings.register,
                onClick: () {
                  context.router
                      .push(LoginAndRegisterRoute(tabItem: TabItem.register));
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
