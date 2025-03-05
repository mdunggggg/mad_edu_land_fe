import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resources/constant/app_colors.dart';

class DialogUtils {
  static Future showLoading(
    BuildContext context,
    String content,
  ) {
    final width = context.width;
    return context.dialog(
      Dialog(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          width: width - 32,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(
                color: Color(AppColors.c3B),
              ),
              const SizedBox(height: 24),
              Text(
                AppStrings.notifications,
                style: StyleApp.bold(fontSize: 24),
              ),
              const SizedBox(height: 12),
              Text(
                content,
                textAlign: TextAlign.center,
                style: StyleApp.medium(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Future showSuccess(
    BuildContext context,
    String content,
  ) {
    final width = context.width;
    return context.dialog(
      Dialog(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          width: width - 32,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: 16.padding,
                decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppImages.icSuccess)
                    .size(height: 48, width: 48),
              ),
              const SizedBox(height: 24),
              Text(
                content,
                textAlign: TextAlign.center,
                style: StyleApp.medium(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Future showError(
      BuildContext context,
      String content,
      ) {
    final width = context.width;
    return context.dialog(
      Dialog(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          width: width - 32,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: 16.padding,
                decoration:  BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppImages.icError)
                    .size(height: 48, width: 48),
              ),
              const SizedBox(height: 24),
              Text(
                content,
                textAlign: TextAlign.center,
                style: StyleApp.medium(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
