import 'package:image_picker/image_picker.dart';

import 'answer_label.dart';

class AnswerChoiceCreateModel {
  AnswerChoiceCreateModel(this.choiceLabel);
  AnswerLabel choiceLabel;
  String answerText = '';
  XFile? answerImageFile;
  bool isCorrect = false;

  AnswerChoiceCreateModel copyWith({
    AnswerLabel? choiceLabel,
    String? answerText,
    XFile? answerImageFile,
    bool? isCorrect,
  }) {
    return AnswerChoiceCreateModel(choiceLabel ?? this.choiceLabel)
      ..answerText = answerText ?? this.answerText
      ..answerImageFile = answerImageFile ?? this.answerImageFile
      ..isCorrect = isCorrect ?? this.isCorrect;
  }

  Map<String, dynamic> toJson() {
    final payload = {
      'choiceLabel': choiceLabel.name,
      'answerText': answerText,
      'isCorrect': isCorrect,
    };
    if (answerImageFile != null) {
      payload['answerImage'] = answerImageFile!.path;
    }
    return payload;
  }

  @override
  String toString() {
    return 'AnswerChoiceCreateModel{choiceLabel: $choiceLabel, answerText: $answerText, answerImageFile: $answerImageFile, isCorrect: $isCorrect}';
  }
}