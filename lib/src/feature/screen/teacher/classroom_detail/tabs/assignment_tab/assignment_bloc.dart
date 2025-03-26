import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';

import '../../../../../../model/question_set_model.dart';
import '../../../../../../repository/classroom_repo.dart';

class AssignmentBloc extends Cubit<BlocState<List<QuestionSetModel>>> {
  AssignmentBloc() : super(BlocState());

  final repo = ClassroomRepo();

  void init(int classroomId) {
    emit(state.copyWith(status: Status.loading));
    repo.getQuestionSetInClassroom(classroomId: classroomId).then((res) {
      if (res.code == 1000) {
        emit(state.copyWith(status: Status.loaded, data: res.data));
      } else {
        emit(state.copyWith(status: Status.error, msg: res.message));
      }
    });
  }
}