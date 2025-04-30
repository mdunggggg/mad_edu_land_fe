import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/student_profile_model.dart';
import 'package:edu_land/src/repository/classroom_repo.dart';

class StudentBloc extends Cubit<BlocState<List<StudentProfileModel>>> {
  StudentBloc() : super(BlocState());

  final repo = ClassroomRepo();

  String errorMsg = '';

  void init(int classroomId) {
    emit(state.copyWith(status: Status.loading));
    repo.getStudentInClassroom(classroomId: classroomId).then((res) {
      if (res.code == 1000) {
        emit(state.copyWith(status: Status.loaded, data: res.data));
      } else {
        emit(state.copyWith(status: Status.error, msg: res.message));
      }
    });
  }

  Future<bool> addStudent({
    required String username,
    required int classroomId,
  }) async {
    final response = await repo.addStudentToClassroom(
      classroomId: classroomId,
      username: username,
    );
    errorMsg = response.message;
    return response.data;
  }

  Future<bool> removeStudent({
    required int classroomId,
    required int studentId,
  }) async {
    final response = await repo.removeStudentFromClassroom(
      classroomId: classroomId,
      studentId: studentId,
    );
    errorMsg = response.message;
    return response.data;
  }
}
