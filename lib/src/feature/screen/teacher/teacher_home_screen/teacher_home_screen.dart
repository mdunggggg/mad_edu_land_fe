import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/chip_custom.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/screen/teacher/teacher_home_screen/teacher_home_bloc.dart';
import 'package:edu_land/src/model/classroom_overview_model.dart';
import 'package:edu_land/src/model/teacher_overview_model.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';
import '../../../../router/router.gr.dart';
import '../../../components/custom_appbar.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({super.key});

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  final bloc = TeacherHomeBloc();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      body: Column(
        children: [
          BlocBuilder<TeacherHomeBloc, BlocState<TeacherOverviewModel>>(
            bloc: bloc,
            builder: (context, state) {
              return CustomAppbar(title: state.data?.name ?? AppStrings.home);
            },
          ),
          Expanded(
            child: Padding(
              padding: 16.paddingHor,
              child: RefreshIndicator(
                onRefresh: () async {
                  bloc.init();
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      16.height,
                      _buildOverview(),
                      24.height,
                      _buildTitleClass(),
                      8.height,
                      _buildClasses(),
                      16.height,
                      _buildAction(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildOverview() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: 16.padding,
            decoration: BoxDecoration(
              color: const Color(AppColors.cDBE),
              borderRadius: 16.radius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const FaIcon(
                      iconCode: 'f0c0',
                      color: Color(AppColors.c3B),
                      size: 20,
                    ),
                    8.width,
                    Text(
                      AppStrings.totalStudents,
                      style: StyleApp.normal(fontSize: 14),
                    ),
                  ],
                ),
                BlocBuilder<TeacherHomeBloc, BlocState<TeacherOverviewModel>>(
                  bloc: bloc,
                  builder: (context, state) {
                    if (state.status == Status.loading) {
                      return const CircularProgressIndicator();
                    }
                    return Text(
                      '${state.data?.totalStudent ?? 0}',
                      style: StyleApp.normal(fontSize: 24),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        16.width,
        Expanded(
          child: Container(
            padding: 16.padding,
            decoration: BoxDecoration(
              color: const Color(AppColors.cFFF),
              borderRadius: 16.radius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const FaIcon(
                      iconCode: 'f02d',
                      color: Color(AppColors.cFF9F),
                      size: 20,
                    ),
                    8.width,
                    Text(
                      AppStrings.classes,
                      style: StyleApp.normal(fontSize: 14),
                    ),
                  ],
                ),
                BlocBuilder<TeacherHomeBloc, BlocState<TeacherOverviewModel>>(
                  bloc: bloc,
                  builder: (context, state) {
                    if (state.status == Status.loading) {
                      return const CircularProgressIndicator();
                    }
                    return Text(
                      '${state.data?.totalClass ?? 0}',
                      style: StyleApp.normal(fontSize: 24),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildClasses() {
    return BlocBuilder<TeacherHomeBloc, BlocState<TeacherOverviewModel>>(
      bloc: bloc,
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const CircularProgressIndicator();
        }
        return ListView.separated(
          shrinkWrap: true,
          padding: 0.padding,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final classroom = state.data?.classrooms[index];
            return _buildClass(classroom);
          },
          separatorBuilder: (context, index) => 16.height,
          itemCount: state.data?.classrooms.length ?? 0,
        );
      },
    );
  }

  _buildTitleClass() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppStrings.classes, style: StyleApp.normal(fontSize: 24)),
        Text(
          AppStrings.viewAll,
          style: StyleApp.normal(
            fontSize: 16,
            color: const Color(AppColors.c4B),
          ),
        ),
      ],
    );
  }

  _buildClass(ClassroomOverviewModel? classroom) {
    return Container(
      padding: 16.padding.copyWith(top: 8),
      decoration: BoxDecoration(
        color: const Color(AppColors.cFFFF),
        borderRadius: 16.radius,
        boxShadow: const [
          BoxShadow(
            color: Color(AppColors.cE5),
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classroom?.name ?? '',
                  style: StyleApp.normal(
                    fontSize: 18,
                    color: const Color(AppColors.c1F),
                  ),
                ),
                Text(
                  '${classroom?.totalStudent ?? 0} ${AppStrings.student.toLowerCase()}',
                  style: StyleApp.normal(
                    fontSize: 14,
                    color: const Color(AppColors.c6B),
                  ),
                ),
                8.height,
                ChipCustom(
                  color: const Color(AppColors.c4B9),
                  title: "CODE: ${classroom?.code ?? 'NONE'}",
                ),
              ],
            ),
          ),
          Container(
            padding: 16.padding,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(AppColors.cF0),
            ),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Color(AppColors.c6B9),
            ),
          ),
        ],
      ),
    );
  }

  _buildAction() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              context.router.push(
                CreateClassRoute(
                  success: () {
                    bloc.init();
                  },
                ),
              );
            },
            child: Container(
              padding: 16.paddingVer,
              decoration: BoxDecoration(
                color: const Color(AppColors.cF0),
                borderRadius: 16.radius,
              ),
              child: Column(
                children: [
                  _buildIcon(
                    '2b',
                    const Color(AppColors.c6B9),
                  ),
                  8.height,
                  Text(
                    AppStrings.newClass,
                    style: StyleApp.normal(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
        16.width,
        Expanded(
          child: Container(
            padding: 16.paddingVer,
            decoration: BoxDecoration(
              color: const Color(AppColors.cFFF),
              borderRadius: 16.radius,
            ),
            child: Column(
              children: [
                _buildIcon(
                  '3f',
                  const Color(AppColors.cFF9),
                ),
                8.height,
                Text(
                  AppStrings.createQuiz,
                  style: StyleApp.normal(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIcon(String code, Color color) {
    return Container(
      padding: 24.padding,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: FaIcon(
        iconCode: code,
        color: color,
      ),
    );
  }
}
