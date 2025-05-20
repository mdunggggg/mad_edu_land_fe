import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/forum_overview_model.dart';
import 'package:edu_land/src/model/like_model.dart';

import '../../../../repository/forum_repo.dart';
import '../../../components/delay_call_back.dart';

class ListForumBloc extends Cubit<BlocState> {
  ListForumBloc() : super(BlocState());

  final delayCallBack = DelayCallBack();

  final repo = ForumRepo();
  List<ForumOverviewModel> _list = [];
  List<ForumOverviewModel> get list => _list;

  int _page = 1;

  String? _search = '';
  search(String value) {
    delayCallBack.debounce(() {
      _search = value;
      init();
    },);
  }

  Future<void> init({
    bool isMore = false,
  }) async {
    emit(state.copyWith(status: Status.loading));
    if (isMore) {
      _page++;
    } else {
      _page = 0;
      list.clear();
    }
    final res = await repo.getListForums(
      page: _page,
      size: 10,
      search: _search ?? '',
    );
    if (res.code == 1000) {
      _list.addAll(res.data ?? []);
      if(res.data?.isEmpty ?? true) {
        _page--;
      }
      emit(state.copyWith(status: Status.loaded));
    } else {
      emit(state.copyWith(status: Status.error, msg: res.message));
    }
  }

  Future<void> changeLike(int id) async {
    final index = _list.indexWhere((element) => element.id == id);
    if (index != -1) {
      _list[index] = _list[index].copyWith(
        liked: !_list[index].liked,
        totalLikes: _list[index].liked
            ? _list[index].totalLikes! - 1
            : _list[index].totalLikes! + 1,
      );
      emit(state.copyWith(status: Status.loaded));
    }
    final res = await repo.changeLike(id);
    if (res.code != 1000) {
      init();
    }
  }

  Future<List<LikeModel>> getLikes({required int postId}) async {
    final res = await repo.getLikes(postId: postId);
    if (res.code == 1000) {
      return res.data;
    } else {
      return [];
    }
  }
}
