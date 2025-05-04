import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/screen/login_and_register/register/register_screen.dart';
import 'package:edu_land/src/repository/classroom_repo.dart';
import 'package:edu_land/src/repository/teacher_repo.dart';


class CreateClassBloc extends Cubit<BlocState> {
  CreateClassBloc() : super(BlocState());

  final teacherRepo = TeacherRepo();
  final classRoomRepo = ClassroomRepo();

  GradleLevel _grade = GradleLevel.preschool;

  GradleLevel get grade => _grade;

  String code = "";

  Future<void> init() async {
    code = await classRoomRepo.genClassCode();
    emit(state.copyWith(status: Status.loaded, msg: "Tạo mã lớp thành công"));
  }

  set grade(GradleLevel value) {
    _grade = value;
    emit(BlocState());
  }

  Future<void> createClass({
    required String name,
    required String description,
  }) async {
    final payload = {
      'name': name,
      'description': description,
      'code': code,
      'grade': _grade.value,
    };
    emit(state.copyWith(status: Status.loading, msg: "Đang tạo lớp học...."));
    final result = await teacherRepo.createClass(payload: payload);
    if(result.code != 400) {
      emit(state.copyWith(status: Status.success, msg: "Tạo lớp học thành công"));
    } else {
      emit(state.copyWith(status: Status.error, msg: result.message.tr()));
    }

  }
}
