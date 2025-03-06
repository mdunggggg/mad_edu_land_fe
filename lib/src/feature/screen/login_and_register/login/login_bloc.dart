import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:bloc/bloc.dart';
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart';

class LoginBloc extends Cubit<BlocState> {
  LoginBloc() : super(BlocState());

  Role _type = Role.student;

  Role get type => _type;

  set type(Role value) {
    _type = value;
    emit(state.copyWith(status: Status.success));
  }

}