import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/classroom_model.dart';
import 'package:edu_land/src/repository/student_repo.dart';

class MyClassroomsBloc extends Cubit<BlocState<List<ClassroomModel>>> {
  MyClassroomsBloc() : super(BlocState());

  final repo = StudentRepo();
  String errorMsg = '';

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    final result = await repo.getMyClassrooms();
    if(result.data != null) {
      emit(state.copyWith(status: Status.success, data: result.data));
    } else {
      emit(state.copyWith(status: Status.error, msg: result.message));
    }
  }

  Future<bool> joinClassroom(String code) async {
    final response = await repo.joinClassroom(
      code: code,
    );
    errorMsg = response.message;
    return response.data;
  }

}