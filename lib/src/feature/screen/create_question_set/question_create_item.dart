import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:edu_land/src/feature/components/base_check_box.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/model/question_create_model.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../resources/constant/app_colors.dart';
import '../../../resources/constant/app_strings.dart';
import '../../../resources/constant/app_styles.dart';
import '../../components/answer_choice.dart';
import '../../components/app_input.dart';

class QuestionCreateItem extends StatefulWidget {
  const QuestionCreateItem({
    super.key,
    required this.index,
    required this.onRemove,
    required this.model,
    required this.onChanged,
  });

  final VoidCallback onRemove;
  final QuestionCreateModel model;
  final int index;
  final Function(QuestionCreateModel) onChanged;

  @override
  State<QuestionCreateItem> createState() => _QuestionCreateItemState();
}

class _QuestionCreateItemState extends State<QuestionCreateItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: 8.radius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: 16.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeader(),
          8.height,
          _buildQuestionTitle(),
          16.height,
          _buildImage(),
          16.height,
          _buildAnswers(),
          16.height,
          _buildCorrectAnswer(),
        ],
      ),
    );
  }

  _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Cau hoi ${widget.index + 1}',
          style: StyleApp.normal(fontSize: 16),
        ),
        InkWell(
          onTap: widget.onRemove,
            child: const FaIcon(iconCode: 'f1f8', color: Colors.red)
        ),
      ],
    );
  }

  _buildQuestionTitle() {
    return AppInput(
      hintText: AppStrings.enterQuestion,
      initialValue: widget.model.questionText,
      label: AppStrings.questionText,
      borderColor: const Color(AppColors.cE5),
      bgColor: Colors.white,
      maxLines: 3,
      titleStyle: StyleApp.normal(),
      onChanged: (value) {
        widget.model.questionText = value;
        widget.onChanged.call(widget.model);
      },
    );
  }

  _buildImage() {
    return InkWell(
      onTap: () async {
        final res = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );
        if (res != null) {
          widget.model.questionImageFile = res;
          widget.onChanged.call(widget.model);
        }
      },
      child: DottedBorder(
        radius: const Radius.circular(12),
        borderType: BorderType.RRect,
        color: const Color(AppColors.cE5),
        dashPattern: const [4, 2],
        padding: 16.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if(widget.model.questionImageFile != null)
              ClipRRect(
                borderRadius: 16.radius,
                child: Image.file(
                  File(widget.model.questionImageFile!.path),
                  fit: BoxFit.fill,
                ),
              ),
            const FaIcon(
              iconCode: 'f03e',
              size: 24,
              color: Color(AppColors.c9C),
            ),
            Text(
              widget.model.questionImageFile == null
                  ? AppStrings.clickToAddImage
                  : 'Click để thay đổi',
              style: StyleApp.normal(color: const Color(AppColors.c6B)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  _buildAnswers() {
    return Column(
      children: [
        Row(
          children: [
            const AnswerChoice(
              title: 'A',
              color: Color(AppColors.cFCE),
              textColor: Color(AppColors.cDB),
            ),
            16.width,
            AppInput(
              hintText: AppStrings.enterOptionA,
              bgColor: Colors.white,
              borderColor: const Color(AppColors.cE5),
              onChanged: (value) {
                widget.model.answerChoices[0] = widget.model.answerChoices[0].copyWith(answerText: value);
                widget.onChanged.call(widget.model);
              },
            ).expanded(),
          ],
        ),
        Row(
          children: [
            const AnswerChoice(
              title: 'B',
              color: Color(AppColors.cED),
              textColor: Color(AppColors.c7C),
            ),
            16.width,
            AppInput(
              hintText: AppStrings.enterOptionB,
              bgColor: Colors.white,
              borderColor: const Color(AppColors.cE5),
              onChanged: (value) {
                widget.model.answerChoices[1] = widget.model.answerChoices[1].copyWith(answerText: value);
                widget.onChanged.call(widget.model);
              },
            ).expanded(),
          ],
        ),
        Row(
          children: [
            const AnswerChoice(
              title: 'C',
              color: Color(AppColors.cDBE),
              textColor: Color(AppColors.c25),
            ),
            16.width,
            AppInput(
              hintText: AppStrings.enterOptionC,
              bgColor: Colors.white,
              borderColor: const Color(AppColors.cE5),
              onChanged: (value) {
                widget.model.answerChoices[2] = widget.model.answerChoices[2].copyWith(answerText: value);
                widget.onChanged.call(widget.model);
              },
            ).expanded(),
          ],
        ),
        Row(
          children: [
            const AnswerChoice(
              title: 'D',
              color: Color(AppColors.cD1F),
              textColor: Color(AppColors.c05),
            ),
            16.width,
            AppInput(
              hintText: AppStrings.enterOptionD,
              bgColor: Colors.white,
              borderColor: const Color(AppColors.cE5),
              onChanged: (value) {
                widget.model.answerChoices[3] = widget.model.answerChoices[3].copyWith(answerText: value);
                widget.onChanged.call(widget.model);
              },
            ).expanded(),
          ],
        ),
      ],
    );
  }

  _buildCorrectAnswer() {
    return Row(
        children: widget.model.answerChoices.map((e) {
      return Row(
        children: [
          BaseCheckbox(
            value: e.isCorrect,
            onChanged: (value) {
              final index = widget.model.answerChoices.indexOf(e);
              widget.model.answerChoices[index] = e.copyWith(isCorrect: value);
              widget.onChanged.call(widget.model);
            },
            radius: 999,
          ),
          8.width,
          Text(
            e.choiceLabel.name,
            style: StyleApp.normal(),
          ),
        ],
      ).expanded();
    }).toList());
  }
}
