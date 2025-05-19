import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edu_land/src/feature/components/expandable_custom.dart';
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

                  ExpandableCustom(
                      header: "Game",
                      borderRadius: 12.0,
                      headerWidget: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color(AppColors.c8B),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.sports_esports,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Expanded(
                                child: Text(
                                  "Game",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                      showArrow: true,
                      arrowColor: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Color(AppColors.c8B),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GridView.count(
                              padding: 0.padding,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                              childAspectRatio: 0.9,
                              children: [
                                _buildGameCard(
                                  'Trò chơi màu sắc',
                                  AppImages.imgColor,
                                  const Color(AppColors.c25),
                                  const Color(AppColors.c60),
                                  Icons.palette,
                                      () {
                                    context.dialog(
                                      _builDialog(context, Category.COLOR),
                                    );
                                  },
                                ),
                                _buildGameCard(
                                  'Trò chơi số đếm',
                                  AppImages.imgCounting,
                                  const Color(AppColors.cDB),
                                  const Color(AppColors.cFBC),
                                  Icons.format_list_numbered,
                                      () {
                                    context.dialog(
                                      _builDialog(context, Category.COUNTING),
                                    );
                                  },
                                ),
                                _buildGameCard(
                                  'More or less',
                                  AppImages.imgMath,
                                  const Color(AppColors.c05),
                                  const Color(AppColors.c34),
                                  Icons.compare_arrows,
                                      () {
                                    context.router.push(const MoreOrLessGameRoute());
                                  },
                                ),
                                _buildGameCard(
                                  'Tính toán đơn giản',
                                  AppImages.imgMath,
                                  const Color(AppColors.cF5),
                                  const Color(AppColors.cFB),
                                  Icons.calculate,
                                      () {
                                    context.router.push(const SimpleAdditionGameRoute());
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.emoji_events,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Chơi để học tốt hơn!",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
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

  Widget _buildGameCard(
    String title,
    String image,
    Color startColor,
    Color endColor,
    IconData icon,
    VoidCallback onTapAction,
  ) {
    return InkWell(
      onTap: onTapAction,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [startColor, endColor],
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: startColor.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 36,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Chơi ngay',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Chọn độ khó',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...Difficulty.values.map(
              (e) => Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 8),
                child: ElevatedButton(
                  onPressed: () {
                    context.pop();
                    if (type == Category.COLOR) {
                      context.router.push(ColorGameRoute(difficulty: e));
                    } else if (type == Category.COUNTING) {
                      context.router.push(CountingGameRoute(difficulty: e));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    e.name.tr(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
              ),
            ).toList(),
          ],
        ),
      ),
    );
  }
}
