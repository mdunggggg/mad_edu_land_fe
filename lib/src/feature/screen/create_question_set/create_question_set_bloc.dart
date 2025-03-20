import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/question_create_model.dart';
import 'package:edu_land/src/repository/question_set_repo.dart';

import '../student/home/student_home_screen.dart';

class CreateQuestionSetBloc extends Cubit<BlocState> {
  CreateQuestionSetBloc() : super(BlocState());

  final _repo = QuestionSetRepo();

  Category _category = Category.COUNTING;

  Category get category => _category;

  set category(Category value) {
    _category = value;
    emit(state.copyWith(status: Status.loaded));
  }

  List<QuestionCreateModel> _questions = [];

  List<QuestionCreateModel> get questions => _questions;

  set questions(List<QuestionCreateModel> value) {
    _questions = value;
  }

  void addQuestion() {
    _questions.add(QuestionCreateModel());
    emit(state.copyWith(status: Status.loaded));
  }

  void removeQuestion(int index) {
    _questions.removeAt(index);
    emit(state.copyWith(status: Status.loaded));
  }

  void updateQuestion(int index, QuestionCreateModel model) {
    _questions[index] = model;
    emit(state.copyWith(status: Status.loaded));
  }

  void createQs(String name) async {
    emit(
      state.copyWith(
        status: Status.loading,
        msg: 'Creating question set...',
      ),
    );
    final formData = FormData();
    formData.fields.addAll([
      MapEntry('category', category.name),
      MapEntry('name', name),
    ]);

    for (var i = 0; i < questions.length; i++) {
      final question = questions[i];

      formData.fields.addAll([
        MapEntry('questions[$i].questionType', question.questionType.name),
        MapEntry('questions[$i].questionText', question.questionText),
      ]);

      if (question.questionImageFile != null) {
        formData.files.add(
          MapEntry(
            'questions[$i].questionImageFile',
            await MultipartFile.fromFile(
              question.questionImageFile!.path,
              filename: question.questionImageFile!.name,
            ),
          ),
        );
      }

      for (int j = 0; j < question.answerChoices.length; j++) {
        final answer = question.answerChoices[j];

        formData.fields.addAll([
          MapEntry('questions[$i].answerChoices[$j].choiceLabel',
              answer.choiceLabel.name),
          MapEntry(
              'questions[$i].answerChoices[$j].answerText', answer.answerText),
          MapEntry('questions[$i].answerChoices[$j].isCorrect',
              answer.isCorrect.toString()),
        ]);

        if (answer.answerImageFile != null) {
          formData.files.add(
            MapEntry(
              'questions[$i].answerChoices[$j].answerImageFile',
              await MultipartFile.fromFile(
                answer.answerImageFile!.path,
                filename: answer.answerImageFile!.name,
              ),
            ),
          );
        }
      }
    }

    final result = await _repo.create(formData: formData);
    if (result.data != null) {
      emit(state.copyWith(status: Status.success, msg: 'Create success'));
    } else {
      emit(state.copyWith(status: Status.error, msg: result.message));
    }
  }
}
