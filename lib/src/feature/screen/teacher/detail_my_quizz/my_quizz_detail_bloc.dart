import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/repository/teacher_repo.dart';

class MyQuizDetailBloc extends Cubit<BlocState<QuestionSetModel>> {
  MyQuizDetailBloc() : super(BlocState());

  final repo = TeacherRepo();

  Future<void> init(int id) async {
    emit(state.copyWith(status: Status.loading));
    final res = await repo.myDetailQuestionSet(id: id);
    if (res.code == 1000) {
      emit(state.copyWith(status: Status.success, data: res.data));
    } else {
      emit(state.copyWith(status: Status.error, msg: res.message));
    }
  }

}