import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/forum_overview_model.dart';

import '../../../../repository/forum_repo.dart';

class ListForumBloc extends Cubit<BlocState<List<ForumOverviewModel>>> {
  ListForumBloc() : super(BlocState());

  final repo = ForumRepo();

  Future<void> init() async {
    final res = await repo.getListForums();
    if (res.code == 1000) {
      emit(state.copyWith(status: Status.loaded, data: res.data));
    } else {
      emit(state.copyWith(status: Status.error, msg: res.message));
    }
  }

  Future<void> changeLike(int id) async {
    final res = await repo.changeLike(id);
    if (res.code == 1000) {
      init();
    }
  }
}