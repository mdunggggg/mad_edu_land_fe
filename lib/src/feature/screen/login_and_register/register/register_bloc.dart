import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:bloc/bloc.dart';

enum RegisterType {
  student,
  teacher,
}

class RegisterBloc extends Cubit<BlocState> {
  RegisterBloc() : super(BlocState());

  RegisterType _type = RegisterType.student;

  RegisterType get type => _type;

  set type(RegisterType value) {
    _type = value;
    emit(state.copyWith(status: Status.success));
  }

}