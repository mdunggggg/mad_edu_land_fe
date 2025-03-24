import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/components/main_button.dart';
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart';
import 'package:edu_land/src/feature/screen/teacher/profile/teacher_profile_bloc.dart';
import 'package:edu_land/src/model/teacher_profile_model.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_avatar/random_avatar.dart';

class TeacherProfileScreen extends StatefulWidget {
  const TeacherProfileScreen({super.key});

  @override
  State<TeacherProfileScreen> createState() => _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends State<TeacherProfileScreen> {
  final bloc = TeacherProfileBloc();

  @override
  void initState() {
    bloc.getTeacherProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: BlocBuilder<TeacherProfileBloc, BlocState<TeacherProfileModel>>(
            bloc: bloc,
            builder: (context, state) {
              if (state.status == Status.error) {
                return Center(child: Text(state.msg ?? 'Error'));
              }
              if (state.status == Status.loading ||
                  state.status != Status.loaded) {
                return const Center(child: CircularProgressIndicator());
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      AppStrings.profile,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color(AppColors.c1F),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28.0),
                  Center(child: RandomAvatar("staytoonz", height: 125, width: 125)),
                  const SizedBox(height: 40.0),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color(AppColors.cFFFF),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(AppColors.cE5),
                          blurRadius: 5,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          AppStrings.displayName,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(AppColors.c6B),
                          ),
                        ),
                        const SizedBox(height: 6.0),
                        Text(
                          state.data?.fullName ?? '',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(AppColors.c1F),
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        const Divider(
                          color: Color(AppColors.cF3),
                          thickness: 1,
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          AppStrings.emailAddress,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(AppColors.c6B),
                          ),
                        ),
                        const SizedBox(height: 6.0),
                        Text(
                          state.data?.username ?? '',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(AppColors.c1F),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: MainButton(
                        buttonTitle: AppStrings.signOut,
                        onPressed: () {
                          context.router.pushAndPopUntil(
                            LoginAndRegisterRoute(role: Role.teacher),
                            predicate: (route) => false,);
                        },
                        backgroundColor: const Color(AppColors.cFEE),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          color: Color(AppColors.c99),
                        ),
                        icon: const FaIcon(
                          iconCode: 'f2f5',
                          color: Color(AppColors.c99),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
