import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/student_profile_model.dart';

import '../../../../repository/student_repo.dart';

class StudentProfileBloc extends Cubit<BlocState<StudentProfileModel>> {
  StudentProfileBloc() : super(BlocState());

  final repo = StudentRepo();

  Future<void> getStudentProfile() async {
    emit(state.copyWith(status: Status.loading));
    final result = await repo.getStudentProfile();
    emit(state.copyWith(status: Status.loaded, data: result.data as StudentProfileModel));
  }



}