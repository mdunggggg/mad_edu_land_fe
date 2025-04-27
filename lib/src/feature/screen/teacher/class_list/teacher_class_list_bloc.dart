import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';

import '../../../../model/teacher_class_info_model.dart';
import '../../../../repository/teacher_repo.dart';

class TeacherClassListBloc extends Cubit<BlocState> {
  TeacherClassListBloc() : super(BlocState());

  final repo = TeacherRepo();

  List<TeacherClassInfoModel> _classList = [];

  List<TeacherClassInfoModel> get classList => _classList;

  set classList(List<TeacherClassInfoModel> value) {
    _classList = value;
  }

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    final res = await repo.getTeacherClassList();
    _classList = res.data as List<TeacherClassInfoModel>;
    emit(state.copyWith(status: Status.loaded, data: _classList));
  }
}
