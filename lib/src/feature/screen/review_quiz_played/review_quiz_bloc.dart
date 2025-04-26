import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/history_quiz_played.dart';

import '../../../model/question_history_model.dart';
import '../../../repository/question_repo.dart';

class ReviewQuizBloc extends Cubit<BlocState> {
  ReviewQuizBloc() : super(BlocState());

  final repo = QuestionRepo();

  HistoryQuizPlayed _historyQuizPlayed = HistoryQuizPlayed();

  HistoryQuizPlayed get historyQuizPlayed => _historyQuizPlayed;

  List<QuestionHistoryModel> get questionHistory => _historyQuizPlayed.questionHistory;

  var _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(value) {
    _currentIndex = value;
    emit(state.copyWith(status: Status.loaded));
  }

  Future<void> init({required int historyId}) async {
    emit(state.copyWith(status: Status.loading));
    final res = await repo.getHistoryQuizPlayed(historyId: historyId);
    _historyQuizPlayed = res.data as HistoryQuizPlayed;
    emit(state.copyWith(status: Status.loaded, data: _historyQuizPlayed));
    _currentIndex = 0;
  }

  bool canPrevious() {
    return currentIndex > 0;
  }

  bool canNext() {
    return currentIndex < questionHistory.length - 1;
  }
}