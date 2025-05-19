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
    final index = state.data?.indexWhere((element) => element.id == id);
    final List<ForumOverviewModel> list = state.data ?? [];
    if (index != null && index != -1) {
      list[index] = list[index].copyWith(
        liked: !list[index].liked,
        totalLikes: list[index].liked
            ? list[index].totalLikes! - 1
            : list[index].totalLikes! + 1,
      );
      emit(state.copyWith(status: Status.loaded, data: list));
    }
    final res = await repo.changeLike(id);
    if (res.code != 1000) {
      init();
    }
  }
}