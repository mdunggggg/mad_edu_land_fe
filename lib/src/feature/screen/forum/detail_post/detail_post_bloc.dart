import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/post_model.dart';
import 'package:edu_land/src/repository/forum_repo.dart';

class DetailPostBloc extends Cubit<BlocState<PostModel>> {
  DetailPostBloc() : super(BlocState());

  final repo = ForumRepo();

  Future<void> init(int id) async {
    emit(state.copyWith(status: Status.loading, msg: "Đang tải..."));
    final res = await repo.getPostDetail(id);
    if (res.code == 1000) {
      emit(state.copyWith(status: Status.success, data: res.data));
    } else {
      emit(state.copyWith(status: Status.error, msg: res.message));
    }
  }

  Future<bool> addComment(int id, String content) async {
    emit(state.copyWith(status: Status.loading, msg: "Đang tải..."));
    final res = await repo.addComment(id, content);
    if (res.code == 1000) {
      emit(
        state.copyWith(
          status: Status.loaded,
          data: state.data?.copyWith(
            comments: res.data,
          ),
        ),
      );
      return true;
    } else {
      emit(state.copyWith(status: Status.error, msg: res.message));
      return false;
    }
  }
}
