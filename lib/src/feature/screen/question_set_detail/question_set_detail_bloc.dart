import 'package:bloc/bloc.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/repository/question_set_repo.dart';

import '../student/home/student_home_screen.dart';


class QuestionSetDetailBloc extends Cubit<BlocState<List<QuestionSetModel>>> {
  QuestionSetDetailBloc() : super(BlocState());

  final repo = QuestionSetRepo();

  Future<void> getFreeQuestionSet(Category? category) async {
    emit(state.copyWith(status: Status.loading));
    final result = await repo.getFreeQuestionSets(category);
    emit(state.copyWith(status: Status.loaded, data: (result.data as List<QuestionSetModel>) ?? []));
  }

}