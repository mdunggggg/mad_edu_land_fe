import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:edu_land/src/model/question_type.dart';
import 'package:image_picker/image_picker.dart';

import 'answer_choice_create_model.dart';
import 'answer_label.dart';

class QuestionCreateModel {
  QuestionType questionType = QuestionType.SINGLE_CHOICE;
  String questionText = '';
  XFile? questionImageFile;
  List<AnswerChoiceCreateModel> answerChoices = [
    AnswerChoiceCreateModel(AnswerLabel.A),
    AnswerChoiceCreateModel(AnswerLabel.B),
    AnswerChoiceCreateModel(AnswerLabel.C),
    AnswerChoiceCreateModel(AnswerLabel.D),
  ];

  Map<String, dynamic> toJson() {
    final payload = {
      'questionType': questionType.name,
      'questionText': questionText,
      'answerChoices': answerChoices.map((e) => jsonEncode(e.toJson())).toList(),
    };
    if (questionImageFile != null) {
      payload['questionImage'] = MultipartFile.fromFileSync(questionImageFile!.path);
    }
    return payload;

  }



  @override
  String toString() {
    return 'QuestionCreateModel{questionType: $questionType, questionText: $questionText, questionImageFile: $questionImageFile, answerChoices: $answerChoices}';
  }
}
