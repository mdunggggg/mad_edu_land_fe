import 'package:easy_localization/easy_localization.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:bloc/bloc.dart';
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart';
import 'package:edu_land/src/repository/auth_repo.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';

class RegisterBloc extends Cubit<BlocState> {
  RegisterBloc() : super(BlocState());

  Role _type = Role.student;
  final authRepo = AuthRepo();

  Role get type => _type;

  set type(Role value) {
    _type = value;
    emit(state.copyWith(status: Status.loaded));
  }

  Future<void> login({
    required String username,
    required String password,
    required String fullName,
    int grade = 0,
}) async {
    emit(state.copyWith(status: Status.loading, msg: AppStrings.registering));
    await Future.delayed(const Duration(seconds: 2));
    final Map<String, dynamic> body = {
      'username': username,
      'password': password,
      'fullName': fullName,
    };
    if(type == Role.student) {
      body.addAll({'grade': grade});
    }
    // emit(state.copyWith(status: Status.success, msg: AppStrings.registerSuccess));
    // print(body);
    final result = await authRepo.register(body: body, type: type);
    if(result.data) {
      emit(state.copyWith(status: Status.success, msg: AppStrings.registerSuccess));
    } else {
      emit(state.copyWith(status: Status.error, msg: result.message.tr()));
    }
  }

}