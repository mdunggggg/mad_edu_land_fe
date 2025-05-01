import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/student_attempt_model.dart';
import 'package:edu_land/src/repository/question_set_repo.dart';

class StudentAttemptHistoryBloc extends Cubit<BlocState<List<StudentAttemptModel>>> {
  StudentAttemptHistoryBloc() : super(BlocState());

  final repo = QuestionSetRepo();

  Future<void> init({int? classId, required int questionSetId}) async {
    final res = await repo.getStudentAttempt(questionSetId: questionSetId, classroomId: classId);
    if(res.code == 1000) {
      emit(state.copyWith(status: Status.success, data: res.data));
    }
    else {
      emit(state.copyWith(status: Status.error, msg: res.message));
    }
  }


}