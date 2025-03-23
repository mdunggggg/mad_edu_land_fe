import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/repository/teacher_repo.dart';

class MyQuizBloc extends Cubit<BlocState> {
  MyQuizBloc() : super(BlocState());

  final repo = TeacherRepo();

  List<QuestionSetModel> _questionSets = [];

  List<QuestionSetModel> get questionSets => _questionSets;

  set questionSets(List<QuestionSetModel> value) {
    _questionSets = value;
  }

  void init() {
    emit(state.copyWith(status: Status.loading));
    repo.myQuestionSet().then((res) {
      if (res.code == 1000) {
        questionSets = res.data ?? [];
        emit(state.copyWith(status: Status.loaded));
      } else {
        emit(state.copyWith(status: Status.error, msg: res.message));
      }
    });
  }
}