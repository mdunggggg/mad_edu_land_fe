import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/model/scoring_model.dart';
import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

import '../../../resources/constant/app_colors.dart';
import '../../components/main_button.dart';

@RoutePage()
class ResultPlayQuizScreen extends StatelessWidget {
  const ResultPlayQuizScreen({super.key, required this.model});

  final ScoringModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    AppStrings.quizResults,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(AppColors.c1F),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 42.0),
                  decoration: BoxDecoration(
                    color: const Color(AppColors.cFFFF),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(AppColors.cE5),
                        blurRadius: 5,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                          AppImages.imgResult,
                          height: 192,
                      ),
                      const SizedBox(height: 16.0),
                      Center(
                        child: Text(
                          AppStrings.quizCompleted,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                            color: Color(AppColors.c10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Center(
                        child: Text(
                          '${model.correct}/${model.total}',
                          style: const TextStyle(
                            fontSize: 56,
                            color: Color(AppColors.c4F),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '${AppStrings.gotScore} ${(model.score ?? 0).formatScore()}%',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Color(AppColors.c81),
                          ),
                        ),
                      )
                    ],

                  ),
                ),
                const SizedBox(height: 32.0),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: const Color(AppColors.cFFFF),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(AppColors.cE5),
                        blurRadius: 5,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        AppStrings.quizDetails,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color(AppColors.c37),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: const Color(AppColors.cECF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Text(
                              AppStrings.correctAnswers,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color(AppColors.c37),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  '${model.correct}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(AppColors.c10),
                                  ),
                                ),
                                const SizedBox(width: 8.0,),
                                const FaIcon(
                                  iconCode: 'f00c',
                                  color: Color(AppColors.c10),
                                )

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12.0,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: const Color(AppColors.cFFFB),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Text(
                              AppStrings.incorrectAnswers,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color(AppColors.c37),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  '${(model.total ?? 0) - (model.correct ?? 0)}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(AppColors.cF5),
                                  ),
                                ),
                                const SizedBox(width: 8.0,),
                                const FaIcon(
                                  iconCode: 'f00d',
                                  color: Color(AppColors.cF5),
                                )

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12.0,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: const Color(AppColors.cEFF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Text(
                              AppStrings.timeTaken,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color(AppColors.c37),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              (model.timeTaken ?? 0).formatTimeTakenToMMss(),
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color(AppColors.c3B),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 32.0,),
                MainButton(
                  buttonTitle: AppStrings.reviewAnswers,
                  backgroundColor: const Color(AppColors.c4F),
                  onPressed: () {
                    context.router.push(ReviewQuizPlayedRoute(historyId: model.historyId ?? 0));
                  },
                ),
                const SizedBox(height: 16.0,),
                MainButton(
                  buttonTitle: AppStrings.continueLearning,
                  backgroundColor: const Color(AppColors.c10),
                  onPressed: () {
                    context.router.popUntilRouteWithName(QuestionSetDetailRoute.name);
                  },
                ),
              ],
            ),
        ),
      ),
    );
  }
}
