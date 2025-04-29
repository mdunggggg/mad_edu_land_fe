import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/answer_choice.dart';
import 'package:edu_land/src/model/answer_choice_model.dart';
import 'package:edu_land/src/model/question_model.dart';
import 'package:edu_land/src/model/scoring_model.dart';
import 'package:edu_land/src/repository/question_repo.dart';

import '../../../model/question_type.dart';

class PlayQuizBloc extends Cubit<BlocState> {
  PlayQuizBloc() : super(BlocState());

  final repo = QuestionRepo();
  final questionRepo = QuestionRepo();

  int? classroomId;

  List<QuestionModel> _questions = [];

  List<QuestionModel> get questions => _questions;

  var _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(value) {
    _currentIndex = value;
    emit(state.copyWith(status: Status.loaded));
  }

  Future<void> init({required int questionSetId, int? classId}) async {
    emit(state.copyWith(status: Status.loading));
    classroomId = classId;
    final res = await repo.getQuestions(questionSetId: questionSetId);
    _questions = res.data as List<QuestionModel>;
    emit(state.copyWith(status: Status.loaded, data: _questions));
    _currentIndex = 0;
  }

  bool canPrevious() {
    return currentIndex > 0;
  }

  bool canNext() {
    return currentIndex < _questions.length - 1;
  }

  void answerQuestion(AnswerChoiceModel answerChoice) {
    final index = _questions[currentIndex].answerChoices.indexOf(answerChoice);
    _questions[currentIndex] = _questions[currentIndex].copyWith(
      answerChoices: _questions[currentIndex].answerChoices
          .mapIndexed((i, e) => i == index ? e.copyWith(isSelected: !e.isSelected) : e)
          .toList(),
    );
    if (_questions[currentIndex].questionType == QuestionType.SINGLE_CHOICE) {
      for (int i = 0; i < _questions[currentIndex].answerChoices.length; i++) {
        if (i != index) {
          _questions[currentIndex] = _questions[currentIndex].copyWith(
            answerChoices: _questions[currentIndex].answerChoices
                .mapIndexed((i, e) => i != index ? e.copyWith(isSelected: false) : e)
                .toList(),
          );
        }
      }
      if(canNext()) {
        currentIndex++;
      }
    }
    emit(state.copyWith(status: Status.loaded));
  }

  Future<ScoringModel?> submit({required int questionSetId, required int timeTaken}) async {
    final Map<String, dynamic> answers = {};
    for (int i = 0; i < _questions.length; i++) {
      final List<String> selectedAnswers = [];
      for (int j = 0; j < _questions[i].answerChoices.length; j++) {
        if (_questions[i].answerChoices[j].isSelected) {
          selectedAnswers.add(_questions[i].answerChoices[j].choiceLabel!);
        }
      }
      answers[_questions[i].id.toString()] = selectedAnswers;
    }
    final payload = {
      'questionSetId': questionSetId,
      'timeTaken': timeTaken,
      'answers': answers,
    };
    if(classroomId != null) {
      payload['classroomId'] = classroomId!;
    }
    final result = await questionRepo.scoring(body: payload);
    if(result.data != null) {
      return result.data as ScoringModel;
    } else {
      return null;
    }
  }
}
