import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/model/classroom_model.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../../resources/constant/dummy_data.dart';
import '../../../components/custom_icon.dart';
import 'my_classrooms_bloc.dart';

class MyClassroomsScreen extends StatefulWidget {
  const MyClassroomsScreen({super.key});

  @override
  State<MyClassroomsScreen> createState() => _MyClassroomsScreenState();
}

class _MyClassroomsScreenState extends State<MyClassroomsScreen> {
  final bloc = MyClassroomsBloc();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      appBar: AppBar(
        title: Text(AppStrings.classes),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<MyClassroomsBloc, BlocState<List<ClassroomModel>>>(
          bloc: bloc,
          builder: (context, state) {
            if (state.status == Status.error) {
              return Center(child: Text(state.msg ?? 'Error'));
            }
            if (state.status == Status.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.separated(
              itemCount: state.data?.length ?? 0,
              itemBuilder: (context, index) {
                final classroom = state.data![index];
                return _buildClassroomItem(classroom);
              },
              separatorBuilder: (context, index) => 16.height,
            );
          },
        ),
      ),
    );
  }

  Widget _buildClassroomItem(ClassroomModel classroom) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: 16.radius,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIcon(
            radius: 8,
            code: DummyData
                .codeFaicons[Random().nextInt(DummyData.codeFaicons.length)],
            color: DummyData.colors[Random().nextInt(DummyData.colors.length)],
          ),
          16.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  classroom.name ?? '',
                  style: StyleApp.normal(fontSize: 18),
                ),
                8.height,
                Row(
                  children: [
                    const FaIcon(
                      iconCode: 'f007',
                      type: FaIconType.light,
                    ),
                    8.width,
                    Text(
                      '${AppStrings.teacher}: ${classroom.teacherName ?? ''}',
                      style: StyleApp.normal(fontSize: 16),
                    ),
                  ],
                ),
                8.height,
                Row(
                  children: [
                    LinearProgressBar(
                      maxSteps: classroom.totalQuestionSet,
                      progressType: LinearProgressBar.progressTypeLinear,
                      currentStep: classroom.totalDoneQuestionSet,
                      progressColor: const Color(AppColors.c34),
                      backgroundColor: const Color(AppColors.cE5),
                      borderRadius: BorderRadius.circular(10),
                    ).expanded(),
                     Text(
                      '${classroom.totalDoneQuestionSet}/${classroom.totalQuestionSet}',
                      textAlign: TextAlign.center,
                    ).expanded()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
