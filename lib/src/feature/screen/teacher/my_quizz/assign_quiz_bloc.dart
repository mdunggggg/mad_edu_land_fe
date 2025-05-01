import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/class_assign_info_model.dart';
import 'package:edu_land/src/repository/question_set_repo.dart';

import '../../../../repository/teacher_repo.dart';

class AssignQuizBloc extends Cubit<BlocState<List<ClassAssignInfoModel>>> {
  AssignQuizBloc() : super(BlocState());

  final repo = TeacherRepo();
  final questionSetRepo = QuestionSetRepo();

  Future<void> getStateAssignedClass(int questionSetId, {String? search}) async {
    emit(state.copyWith(status: Status.loading));
    final result = await repo.getStateAssignedClass(questionSetId: questionSetId, search: search);
    emit(state.copyWith(status: Status.loaded, data: result.data as List<ClassAssignInfoModel>));
  }

  void assignClass(int classroomId, int questionSetId) async {
    final result = await questionSetRepo.assignToClass(classroomId: classroomId, questionSetId: questionSetId);
    if(result.data == true){
      getStateAssignedClass(questionSetId);
    }
  }
}