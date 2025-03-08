import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/teacher_overview_model.dart';

import '../../../../repository/teacher_repo.dart';

class TeacherHomeBloc extends Cubit<BlocState<TeacherOverviewModel>> {
  TeacherHomeBloc() : super(BlocState());

  final repo = TeacherRepo();

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    final result = await repo.getTeacherOverview();
    if(result.data != null) {
      emit(state.copyWith(status: Status.success, data: result.data));
    } else {
      emit(state.copyWith(status: Status.error, msg: result.message));
    }
  }

}