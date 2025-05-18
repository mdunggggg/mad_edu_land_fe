import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/base_cache_image.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/screen/review_quiz_played/review_quiz_bloc.dart';
import 'package:edu_land/src/model/review_answer_choice_model.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_images.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../resources/constant/dummy_data.dart';
import '../../../shared/utils/text_to_speech_util.dart';
import '../../components/answer_choice.dart';

@RoutePage()
class ReviewQuizPlayedScreen extends StatefulWidget {
  const ReviewQuizPlayedScreen({super.key, required this.historyId});

  final int historyId;

  @override
  State<ReviewQuizPlayedScreen> createState() => _ReviewQuizPlayedScreenState();
}

class _ReviewQuizPlayedScreenState extends State<ReviewQuizPlayedScreen> {
  final bloc = ReviewQuizBloc();

  // TTS utility
  final TextToSpeechUtil _tts = TextToSpeechUtil();

  @override
  void initState() {
    bloc.init(historyId: widget.historyId);
    super.initState();
    _tts.init();
  }

  @override
  void dispose() {
    _tts.dispose();
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
            margin: 8.paddingLeft,
            padding: 8.padding,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(AppColors.cFFFF),
              boxShadow: [
                BoxShadow(
                  color: Color(AppColors.cE5),
                  blurRadius: 4,
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
          child: BlocBuilder<ReviewQuizBloc, BlocState>(
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

  _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Text(
            bloc.historyQuizPlayed.questionSetName ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: StyleApp.normal(
              fontSize: 24,
              color: const Color(AppColors.c1F),
            ),
          ),
        ),
        const SizedBox(width: 24.0),
        Text(
          '8/10',
          style: StyleApp.normal(
            fontSize: 16,
            color: const Color(AppColors.c4B),
          ),
        )
      ],
    );
  }

  _buildProgress() {
    return LinearProgressBar(
      maxSteps: bloc.questionHistory.length,
      currentStep: bloc.currentIndex + 1,
      progressType: LinearProgressBar.progressTypeLinear,
      progressColor: const Color(AppColors.c60),
      backgroundColor: const Color(AppColors.cE5),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    );
  }

  _buildAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryButton(
          text: AppStrings.previous,
          textStyle: StyleApp.normal(color: Colors.white),
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
          onTap: () {
            context.router.maybePop();
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
            alignment: Alignment.center,
            child: const FaIcon(iconCode: 'f00c'),
          ),
        ),

        PrimaryButton(
          text: AppStrings.next,
          textStyle: StyleApp.normal(color: Colors.white),
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

  _buildQuestion() {
    final question = bloc.questionHistory[bloc.currentIndex];
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: const Color(AppColors.cFFFF),
        borderRadius: BorderRadius.circular(16),
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
          _buildNumOrder(question.questionText ?? ''),
          8.height,
          Text(
            question.questionText ?? '',
            style: StyleApp.normal(
              fontSize: 20,
            ),
          ),
          16.height,
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

  _buildNumOrder(String questionText) {
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
        InkWell(
            onTap: () {
              if (_tts.isPlaying()) {
                _tts.stop();
              } else {
                _tts.speak(questionText);
              }
            },
            child: const FaIcon(iconCode: 'f6a8')
        )
      ],
    );
  }

  _buildAnswers() {
    final answerChoices = bloc.questionHistory[bloc.currentIndex].answerChoices;
    final int numberOfChoices = answerChoices.length;
    return Column(
      children: List.generate(
        numberOfChoices,
            (index) => _buildAnswer(answerChoices[index], index + 1),
      ),
    );
  }

  Widget _buildAnswer(ReviewAnswerChoiceModel e, int index) {
    final color = DummyData.answerColors[index % 4];
    final bool isSelected = e.submittedByStudent ?? false;
    final bool isCorrect = e.correct ?? false;
    return InkWell(
      onTap: () {},
      child: Container(
        padding: isSelected ? 3.padding : 0.padding,
        margin: 16.paddingBottom,
        decoration:  isSelected
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
              (e.answerText!=null)
                  ? const SizedBox(width: 8.0)
                  : const SizedBox.shrink(),
              if (e.answerText != null)
                InkWell(
                    onTap: () {
                      if (_tts.isPlaying()) {
                        _tts.stop();
                      } else {
                        _tts.speak(e.answerText ?? '');
                      }
                    },
                    child: const FaIcon(iconCode: 'f6a8')
                ),
              if(e.answerImageUrl != null)
                BaseCacheImage(
                  url: e.answerImageUrl ?? '',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
              const Spacer(),
              if (isCorrect)
                SvgPicture.asset(AppImages.icCorrectAnswer).size(height: 20, width: 24),
              if (isSelected)
                if (!isCorrect)
                  SvgPicture.asset(AppImages.icWrongAnswer).size(height: 30, width: 24)
            ],
          ),
        ),
      ),
    );
  }
}
