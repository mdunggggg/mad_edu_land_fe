import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../resources/constant/app_colors.dart';
class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 28.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
                children: [
                  CircleAvatar(
                    radius: 28
                  ),
                  SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nguyễn Văn A', style: TextStyle(fontSize: 18, color: Color(AppColors.c1F))),
                      Text('Lớp 1', style: TextStyle(fontSize: 14, color: Color(AppColors.c6B))),
                    ],
                  )
                ],
              ),
            const SizedBox(height: 16.0,),
            const Text(
              'Xin chào A! 👋',
              style: TextStyle(fontSize: 24, color: Color(AppColors.cEC)),
            ),
            const SizedBox(height: 20.0),
            Text(
              AppStrings.learningPrompt,
              style: const TextStyle(fontSize: 20, color: Color(AppColors.c1F)),
            ),
            const SizedBox(height: 24.0),
                Text(
                  AppStrings.colors,
                  style: const TextStyle(fontSize: 18, color: Color(AppColors.c37)),
            ),
            _buildCard(AppStrings.colorMission, AppImages.imgColor, AppColors.cDBE, () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "You clicked on Color Mission",
                  ),
                )
              );
            }),
            const SizedBox(height: 24.0),
            Text(
              AppStrings.counting,
              style: const TextStyle(fontSize: 18, color: Color(AppColors.c37)),
            ),
            _buildCard(AppStrings.countingMission, AppImages.imgCounting, AppColors.cFEF3, () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "You clicked on Counting Mission",
                  ),
                )
              );
            }),
            const SizedBox(height: 24.0),
            Text(
              AppStrings.subjects,
              style: const TextStyle(fontSize: 18, color: Color(AppColors.c37)),
            ),
            _buildCard(AppStrings.math, AppImages.imgMath, AppColors.cFEE, () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "You clicked on Math",
                  ),
                )
              );
            }),
            _buildCard(AppStrings.vietnamese, AppImages.imgVietnamese, AppColors.cCC, () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "You clicked on Vietnamese",
                  ),
                )
              );
            }),
          ],
        ),
      ),
    );
  }

  _buildCard(String title, String image, int color, VoidCallback onTapAction) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        onTap: onTapAction,
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              Image.asset(image, width: 80, height: 80),
              const SizedBox(width: 12.0),
              Text(
                title,
                style: const TextStyle(fontSize: 18, color: Color(AppColors.c37)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



