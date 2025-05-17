import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/feature/components/answer_choice.dart';
import 'package:edu_land/src/model/answer_choice_model.dart';
import 'package:edu_land/src/model/question_model.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/bloc_state.dart';
import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_styles.dart';
import '../../../../resources/constant/dummy_data.dart';
import '../../../components/base_cache_image.dart';
import '../../../components/fa_icon.dart';
import 'my_quizz_detail_bloc.dart';

@RoutePage()
class MyQuizDetailScreen extends StatefulWidget {
  const MyQuizDetailScreen({super.key, required this.id});

  final int id;

  @override
  State<MyQuizDetailScreen> createState() => _MyQuizDetailScreenState();
}

class _MyQuizDetailScreenState extends State<MyQuizDetailScreen> {
  final bloc = MyQuizDetailBloc();

  @override
  void initState() {
    bloc.init(widget.id);
    super.initState();
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
      body: BlocBuilder<MyQuizDetailBloc, BlocState<QuestionSetModel>>(
        bloc: bloc,
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status == Status.error) {
            return Center(
              child: Text(
                state.msg,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            );
          }
          if (state.status == Status.success) {
            return Container(
              padding: 16.padding,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(state.data!),
                    16.height,
                    _buildQuestion(state.data!.questions),
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: Text(
              'No data',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }

  _buildHeader(QuestionSetModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.name ?? '',
          style: StyleApp.normal(fontSize: 24),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        8.height,
        Text(
          model.description ?? '',
          style: StyleApp.normal(fontSize: 16),
        ),
      ],
    );
  }

  _buildQuestion(List<QuestionModel> questions) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final question = questions[index];
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
              _buildAnswers(question.answerChoices),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => 16.height,
      itemCount: questions.length,
    );
  }

  _buildAnswers(List<AnswerChoiceModel> answerChoices) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3.0,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final e = answerChoices[index];
        final color = DummyData.answerColors[(index ?? 0) % 4];
        return Container(
          padding: 6.padding,
          decoration: BoxDecoration(
            borderRadius: 16.radius,
            color: color.withOpacity(0.5),
          ),
          child: Row(
            children: [
              Container(
                padding: 12.padding,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
                alignment: Alignment.center,
                child: Text(
                  e.choiceLabel ?? '',
                  style: StyleApp.normal(fontSize: 12, color: Colors.black),
                ),
              ),
              8.width,
              Expanded(
                child: Text(
                  e.answerText ?? '',
                  style: StyleApp.normal(fontSize: 14),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: answerChoices.length,
    );
  }
}
