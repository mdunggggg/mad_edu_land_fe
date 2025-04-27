import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/screen/create_question_set/create_question_set_bloc.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/check_status_bloc.dart';
import '../../components/chip_custom.dart';
import '../student/home/student_home_screen.dart';
import 'question_create_item.dart';

@RoutePage()
class CreateQuestionSetScreen extends StatefulWidget {
  const CreateQuestionSetScreen({
    super.key,
    this.classId,
  });

  final int? classId;

  @override
  State<CreateQuestionSetScreen> createState() =>
      _CreateQuestionSetScreenState();
}

class _CreateQuestionSetScreenState extends State<CreateQuestionSetScreen> {
  final CreateQuestionSetBloc _bloc = CreateQuestionSetBloc();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _questionSetNameController =
      TextEditingController();


  @override
  void dispose() {
    _bloc.close();
    _scrollController.dispose();
    _questionSetNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      appBar: AppBar(
        title: Text(AppStrings.createQuiz),
        backgroundColor: Colors.white,
      ),
      body: BlocListener<CreateQuestionSetBloc, BlocState>(
        bloc: _bloc,
        listener: (context, state) {
          CheckStateBloc.check(context, state,
              msg: state.msg, returnBack: true);
        },
        child: Padding(
          padding: 16.padding.copyWith(top: 0, bottom: 0),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildQuestionSetName(),
                16.height,
                _buildCategory(),
                16.height,
                _buildAddQuestionTitle(),
                16.height,
                _buildListQuestion(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        width: double.infinity,
        padding: 16.padding,
        child: PrimaryButton(
          text: AppStrings.createQuiz,
          onClick: () {
            _bloc.createQs(_questionSetNameController.text, widget.classId);
          },
          color: Colors.blue,
          textStyle: StyleApp.normal(color: Colors.white, fontSize: 16),
          prefixIcon: const FaIcon(
            iconCode: '2b',
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _buildQuestionSetName() {
    return AppInput(
      hintText: AppStrings.enterQuizName,
      label: AppStrings.quizName,
      borderColor: const Color(AppColors.cE5),
      bgColor: Colors.white,
      controller: _questionSetNameController,
    );
  }

  _buildCategory() {
    return BlocBuilder<CreateQuestionSetBloc, BlocState>(
      bloc: _bloc,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.category,
              style: StyleApp.normal(fontSize: 14),
            ),
            Row(
              children: [
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.cDB),
                    title: AppStrings.colors,
                    onTap: () {
                      _bloc.category = Category.COLOR;
                    },
                    isActive: _bloc.category == Category.COLOR,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.c7C),
                    title: AppStrings.counting,
                    onTap: () {
                      _bloc.category = Category.COUNTING;
                    },
                    isActive: _bloc.category == Category.COUNTING,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.c25),
                    title: AppStrings.math,
                    onTap: () {
                      _bloc.category = Category.MATH;
                    },
                    isActive: _bloc.category == Category.MATH,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.c05),
                    title: AppStrings.vietnamese,
                    onTap: () {
                      _bloc.category = Category.VIETNAMESE;
                    },
                    isActive: _bloc.category == Category.VIETNAMESE,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  _buildAddQuestionTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.question,
          style: StyleApp.normal(fontSize: 18),
        ),
        PrimaryButton(
          text: AppStrings.addQuestion,
          onClick: () {
            _bloc.addQuestion();
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent + context.height,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
          color: Colors.blue,
          textStyle: StyleApp.normal(color: Colors.white, fontSize: 16),
          prefixIcon: const FaIcon(
            iconCode: '2b',
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  _buildListQuestion() {
    return BlocBuilder<CreateQuestionSetBloc, BlocState>(
      bloc: _bloc,
      builder: (context, state) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return QuestionCreateItem(
              key: ValueKey(_bloc.questions[index].hashCode),
              index: index,
              model: _bloc.questions[index],
              onRemove: () {
                _bloc.removeQuestion(index);
              },
              onChanged: (model) {
                _bloc.updateQuestion(index, model);
              },
            );
          },
          separatorBuilder: (context, index) => 16.height,
          itemCount: _bloc.questions.length,
          padding: 0.padding,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        );
      },
    );
  }
}
