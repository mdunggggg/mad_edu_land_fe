import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/answer_choice.dart';
import 'package:edu_land/src/feature/components/base_cache_image.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/screen/play_quizz/play_quiz_bloc.dart';
import 'package:edu_land/src/model/answer_choice_model.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/resources/constant/dummy_data.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_duration.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../resources/constant/app_colors.dart';
import '../../components/fa_icon.dart';

@RoutePage()
class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({
    super.key,
    required this.idQuestionSet,
    required this.title,
    this.classId,
    this.onSubmit,
  });

  final String title;
  final int idQuestionSet;
  final int? classId;
  final VoidCallback? onSubmit;

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  final bloc = PlayQuizBloc();

  // Timer related variables
  final timeNotifier = ValueNotifier<Duration>(Duration.zero);
  Timer? timer;

  @override
  void initState() {
    bloc.init(questionSetId: widget.idQuestionSet, classId: widget.classId);
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _stopTimer();
    timer = null;
    timeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(AppColors.cF9),
        leading: InkWell(
          onTap: () {
            context.router.maybePop();
          },
          child: Container(
            padding: 8.padding,
            margin: 8.paddingLeft,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(AppColors.cFFFF),
              boxShadow: [
                BoxShadow(
                  color: Color(AppColors.cE5),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: const FaIcon(iconCode: 'f060'),
          ),
        ),
      ),
      backgroundColor: const Color(AppColors.cF9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<PlayQuizBloc, BlocState>(
            bloc: bloc,
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildHeader(),
                  4.height,
                  _buildTimerUI(),
                  8.height,
                  _buildProgress(),
                  8.height,
                  _buildAction(),
                  16.height,
                  _buildQuestion(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  _buildProgress() {
    return LinearProgressBar(
      maxSteps: bloc.questions.length,
      progressType: LinearProgressBar.progressTypeLinear,
      // Use Linear progress
      currentStep: bloc.currentIndex + 1,
      progressColor: const Color(AppColors.c60),
      backgroundColor: const Color(AppColors.cE5),
      borderRadius: BorderRadius.circular(10), //  NEW
    );
  }

  _buildHeader() {
    return Row(
      children: [
        Expanded(
            child: Text(
              widget.title,
              style: StyleApp.normal(fontSize: 24),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
        ),
        const SizedBox(width: 24.0),
        Text(
          '${bloc.currentIndex + 1}/${bloc.questions.length}',
          style: StyleApp.normal(fontSize: 16),
        ),
      ],
    );
  }
  
  _buildTimerUI() {
    return ValueListenableBuilder<Duration>(
      valueListenable: timeNotifier,
      builder: (BuildContext context, Duration value, Widget? child) {
        return Text(
          value.formatMMss,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(AppColors.c1F),
          ),
        );
      },
    );
  }

  _buildQuestion() {
    final question = bloc.questions[bloc.currentIndex];
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        borderRadius: 16.radius,
        color: const Color(AppColors.cFFFF),
        boxShadow: const [
          BoxShadow(
            color: Color(AppColors.cE5),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildNumOrder(),
          8.height,
          Text(
            question.questionText ?? '',
            style: StyleApp.normal(
              fontSize: 20,
            ),
          ),
          16.height,
          if (question.questionImageUrl != null)
            BaseCacheImage(
              url: question.questionImageUrl ?? '',
              height: context.width / 3,
              width: context.width / 3,
              fit: BoxFit.fill,
            ),
          16.height,
          _buildAnswers(),
        ],
      ),
    );
  }

  _buildNumOrder() {
    return Row(
      children: [
        Text(
          '${AppStrings.question} ${bloc.currentIndex + 1}',
          style: StyleApp.normal(
            fontSize: 16,
            color: const Color(
              AppColors.c60,
            ),
          ),
        ),
        8.width,
        const FaIcon(iconCode: 'f6a8'),
      ],
    );
  }

  _buildAnswers() {
    return Column(
      children: bloc.questions[bloc.currentIndex].answerChoices
          .map(
            (e) => _buildAnswer(e),
          )
          .toList(),
    );
  }

  Widget _buildAnswer(AnswerChoiceModel e) {
    final color = DummyData.answerColors[(e.id ?? 0) % 4];
    return InkWell(
      onTap: () {
        bloc.answerQuestion(e);
      },
      child: Container(
        padding: e.isSelected ? 3.padding : 0.padding,
        margin: 16.paddingBottom,
        decoration: e.isSelected
            ? BoxDecoration(
                borderRadius: 19.radius,
                border: Border.all(
                  color: color,
                  width: 2.0,
                ),
              )
            : null,
        child: Container(
          padding: 16.paddingHor + 8.paddingVer,
          decoration: BoxDecoration(
            borderRadius: 16.radius,
            color: color.withOpacity(0.5),
          ),
          child: Row(
            children: [
              AnswerChoice(title: e.choiceLabel ?? '', color: color),
              16.width,
              Text(
                e.answerText ?? '',
                style: StyleApp.normal(fontSize: 16),
              ),
              if(e.answerImageUrl != null)
                BaseCacheImage(
                  url: e.answerImageUrl ?? '',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
            ],
          ),
        ),
      ),
    );
  }

  _buildAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryButton(
          text: AppStrings.previous,
          textStyle:
              StyleApp.normal(color: bloc.canPrevious() ? Colors.white : null),
          onClick: bloc.canPrevious()
              ? () {
                  bloc.currentIndex--;
                }
              : null,
          color: const Color(AppColors.c60),
          prefixIcon: FaIcon(
            iconCode: 'f060',
            color: bloc.canPrevious() ? Colors.white : null,
          ),
        ),

        InkWell(
          onTap: () async {
            _stopTimer();
            int elapsedTime = getElapsedTimeInSeconds();
            final model = await bloc.submit(questionSetId: widget.idQuestionSet, timeTaken: elapsedTime);
            if (model != null  && mounted) {
              print('result: ${model.toJson()}');
              widget.onSubmit?.call();
              context.router.maybePop();
              context.router.push(ResultPlayQuizRoute(model: model));
            }
          },
          child: Container(
            padding: 16.padding,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(AppColors.cFFFF),
              boxShadow: [
                BoxShadow(
                  color: Color(AppColors.cE5),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),

            child: const FaIcon(iconCode: 'f00c'),
          ),
        ),
        
        PrimaryButton(
          text: AppStrings.next,
          textStyle:
              StyleApp.normal(color: bloc.canNext() ? Colors.white : null),
          onClick: bloc.canNext()
              ? () {
                  bloc.currentIndex++;
                }
              : null,
          color: const Color(AppColors.c60),
          suffixIcon: FaIcon(
            iconCode: 'f061',
            color: bloc.canNext() ? Colors.white : null,
          ),
        ),
      ],
    );
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      timeNotifier.value = timeNotifier.value + const Duration(seconds: 1);
    });
  }

  void _stopTimer() {
    timer?.cancel();
  }

  int getElapsedTimeInSeconds() {
    return timeNotifier.value.inSeconds;
  }
}
