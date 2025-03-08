import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 16.padding.copyWith(top: context.padding.top),
      decoration: const BoxDecoration(
        color: Color(AppColors.cFFFF),
      ),
      child: Row(
        children: [
          RandomAvatar('saytoonz', height: 50, width: 50),
          16.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: StyleApp.normal(fontSize: 18),
                ),
                Text(
                  AppStrings.welcomeBack,
                  style: StyleApp.normal(
                      fontSize: 20, color: const Color(AppColors.cEC)),
                ),
              ],
            ),
          ),
          16.width,
          Container(
            padding: 8.padding,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(AppColors.cFFF),
            ),
            child: const FaIcon(
              iconCode: 'f0f3',
              type: FaIconType.light,
              color: Color(AppColors.cFF9F),
            ),
          )
        ],
      ),
    );
  }
}
