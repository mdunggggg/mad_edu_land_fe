import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/teacher_profile_model.dart';

import '../../../../repository/teacher_repo.dart';

class TeacherProfileBloc extends Cubit<BlocState<TeacherProfileModel>> {
  TeacherProfileBloc() : super(BlocState());

  final repo = TeacherRepo();

  Future<void> getTeacherProfile() async {
    emit(state.copyWith(status: Status.loading));
    final result = await repo.getTeacherProfile();
    emit(state.copyWith(status: Status.loaded, data: result.data as TeacherProfileModel));
  }
}