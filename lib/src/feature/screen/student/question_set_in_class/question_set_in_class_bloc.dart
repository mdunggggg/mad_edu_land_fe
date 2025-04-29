import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/question_set_in_student_class_model.dart';
import 'package:edu_land/src/repository/classroom_repo.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';

class QuestionSetInClassBloc extends Cubit<BlocState<List<QuestionSetInStudentClassModel>>> {
  QuestionSetInClassBloc() : super(BlocState());

  final repo = ClassroomRepo();

  Future<void> init(int id) async {
    emit(state.copyWith(status: Status.loading));
    final res = await repo.questionSetInStudentClass(id);
    if (res.code == 1000) {
      emit(state.copyWith(status: Status.loaded, data: res.data));
    } else {
      emit(state.copyWith(status: Status.error, msg: res.message));
    }
  }

  int getTotalDone() {
    return state.data?.fold(0, (total, item) => total.validator.toInt() + ((item.done ?? false)? 1 : 0)) ?? 0;
  }


}