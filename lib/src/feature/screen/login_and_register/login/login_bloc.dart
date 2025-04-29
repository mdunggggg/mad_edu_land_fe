import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:bloc/bloc.dart';
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart';
import 'package:edu_land/src/repository/auth_repo.dart';

import '../../../../data/local/get.dart';
import '../../../../data/local/keys.dart';

class LoginBloc extends Cubit<BlocState> {
  LoginBloc() : super(BlocState());

  final authRepo = AuthRepo();

  Role _type = Role.student;

  Role get type => _type;

  set type(Role value) {
    _type = value;
    emit(state.copyWith(status: Status.loaded));
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    emit(state.copyWith(status: Status.loading, msg: "Đang đăng nhập..."));
    final body = {
      'username': username,
      'password': password,
      'role': _type.name.toUpperCase(),
    };
    final result = await authRepo.login(body: body);
    if(result.data != null) {
      emit(state.copyWith(status: Status.navigate, msg: 'Đăng nhập thành công'));
      sharedPref.setValue(PrefKeys.accessToken, result.data.accessToken);
      sharedPref.setValue(PrefKeys.refreshToken, result.data.refreshToken);
    } else {
      emit(state.copyWith(status: Status.error, msg: result.message));
    }
  }
}
