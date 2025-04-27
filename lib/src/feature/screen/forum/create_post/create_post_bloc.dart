import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/repository/forum_repo.dart';

class CreatePostBloc extends Cubit<BlocState> {
  CreatePostBloc() : super(BlocState());

  final repo = ForumRepo();

  Future<void> createPost({
    required String title,
    required String content,
  }) async {
    emit(state.copyWith(status: Status.loading, msg: "Đang tạo bài viết...."));
    final res = await repo.createPost(
      title: title,
      content: content,
    );
    if (res.code == 1000) {
      emit(state.copyWith(status: Status.success, msg: 'Tạo bài viết thành công'));
    } else {
      emit(state.copyWith(status: Status.error, msg: res.message));
    }
  }
}