import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
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

  void init({String? search}) {
    repo.myQuestionSet(search: search).then((res) {
      if (res.code == 1000) {
        questionSets = res.data ?? [];
        emit(state.copyWith(status: Status.loaded));
      } else {
        emit(state.copyWith(status: Status.error, msg: res.message));
      }
    });
  }

  Future<void> deleteQuiz(int questionSetId) async {
    emit(state.copyWith(status: Status.loading, msg: "Đang xóa bộ câu hỏi..."));
    final result = await repo.deleteQuestionSet(questionSetId: questionSetId);
    if(result.code == 1000) {
      emit(state.copyWith(status: Status.success, msg: "Xóa bộ câu hỏi thành công"));
    } else {
      emit(state.copyWith(status: Status.error, msg: result.message.tr()));
    }
  }
}