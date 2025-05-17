import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edu_land/src/feature/screen/game/color_game_screen.dart';
import 'package:edu_land/src/feature/screen/student/home/student_home_bloc.dart';
import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_avatar/random_avatar.dart';

import '../../../../bloc/bloc_state.dart';
import '../../../../model/student_profile_model.dart';
import '../../../../resources/constant/app_colors.dart';

enum Category { MATH, COLOR, VIETNAMESE, COUNTING }

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  final bloc = StudentHomeBloc();

  @override
  void initState() {
    bloc.getStudentProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 28.0,
          bottom: 16.0,
        ),
        child: SingleChildScrollView(
          child: BlocBuilder<StudentHomeBloc, BlocState<StudentProfileModel>>(
            bloc: bloc,
            builder: (context, state) {
              if (state.status == Status.error) {
                return Center(child: Text(state.msg ?? 'Error'));
              }
              if (state.status == Status.loading ||
                  state.status != Status.loaded) {
                return const Center(child: CircularProgressIndicator());
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (context.padding.top).height,
                   Row(
                    children: [
                      RandomAvatar((state.data?.userId ?? -1).toString(), height: 50, width: 50),
                      const SizedBox(width: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.data?.fullName ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Color(AppColors.c1F),
                            ),
                          ),
                          Text(
                            state.data?.grade == 0 ? AppStrings.preschool : 'Lớp ${state.data?.grade}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(AppColors.c6B),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Xin chào ${state.data?.fullName}! 👋',
                    style: const TextStyle(fontSize: 24, color: Color(AppColors.cEC)),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    AppStrings.learningPrompt,
                    style: const TextStyle(
                        fontSize: 20, color: Color(AppColors.c1F)),
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    AppStrings.colors,
                    style: const TextStyle(
                        fontSize: 18, color: Color(AppColors.c37)),
                  ),
                  _buildCard(AppStrings.colorMission, AppImages.imgColor,
                      AppColors.cDBE, () {
                    context.router
                        .push(QuestionSetDetailRoute(category: Category.COLOR));
                  }),
                  _buildCard(
                      'Trò chơi màu sắc', AppImages.imgColor, AppColors.cDBE,
                      () {
                    context.dialog(
                      _builDialog(context, Category.COLOR),
                    );
                  }),
                  const SizedBox(height: 24.0),
                  Text(
                    AppStrings.counting,
                    style: const TextStyle(
                        fontSize: 18, color: Color(AppColors.c37)),
                  ),
                  _buildCard(AppStrings.countingMission, AppImages.imgCounting,
                      AppColors.cFEF3, () {
                    context.router.push(
                        QuestionSetDetailRoute(category: Category.COUNTING));
                  }),
                  _buildCard(
                      'Trò chơi số đếm', AppImages.imgColor, AppColors.cDBE,
                      () {
                    context.dialog(
                      _builDialog(context, Category.COUNTING),
                    );
                  }),
                  _buildCard('More or less', AppImages.imgColor, AppColors.cDBE,
                      () {
                    context.router.push(const MoreOrLessGameRoute());
                  }),
                  _buildCard(
                      'Tinh toan don gian', AppImages.imgColor, AppColors.cDBE,
                      () {
                    context.router.push(const SimpleAdditionGameRoute());
                  }),
                  const SizedBox(height: 24.0),
                  Text(
                    AppStrings.subjects,
                    style: const TextStyle(
                        fontSize: 18, color: Color(AppColors.c37)),
                  ),
                  _buildCard(AppStrings.math, AppImages.imgMath, AppColors.cFEE,
                      () {
                    context.router
                        .push(QuestionSetDetailRoute(category: Category.MATH));
                  }),
                  _buildCard(AppStrings.vietnamese, AppImages.imgVietnamese,
                      AppColors.cCC, () {
                    context.router.push(
                      QuestionSetDetailRoute(category: Category.VIETNAMESE),
                    );
                  }),
                ],
              );
            },
          ),
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
                style:
                    const TextStyle(fontSize: 18, color: Color(AppColors.c37)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _builDialog(BuildContext context, Category type) {
    return Dialog(
      child: Container(
        color: Colors.white,
        padding: 16.padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: Difficulty.values
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    context.pop();
                    if (type == Category.COLOR) {
                      context.router.push(ColorGameRoute(difficulty: e));
                    } else if (type == Category.COUNTING) {
                      context.router.push(CountingGameRoute(difficulty: e));
                    }
                  },
                  child:
                      Container(padding: 16.padding, child: Text(e.name.tr())),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
