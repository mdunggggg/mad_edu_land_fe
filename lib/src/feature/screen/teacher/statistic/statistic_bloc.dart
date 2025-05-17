import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/statistic_model.dart';
import 'package:edu_land/src/repository/classroom_repo.dart';

class StatisticBloc extends Cubit<BlocState<StatisticModel>> {
  StatisticBloc() : super(BlocState());

  final repo = ClassroomRepo();

  Future<void> init({required int classroomId, required int questionSetId}) async {
    emit(state.copyWith(status: Status.loading));
    final res = await repo.statistic(classroomId: classroomId, questionSetId: questionSetId);
    if (res.code == 1000) {
      emit(state.copyWith(status: Status.success, data: res.data));
    } else {
      emit(state.copyWith(status: Status.error, msg: "Chưa có hoạt động nào"));
    }
  }
}