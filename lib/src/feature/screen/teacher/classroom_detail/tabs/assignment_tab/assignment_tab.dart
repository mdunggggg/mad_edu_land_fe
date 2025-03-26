import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/chip_custom.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../router/router.gr.dart';
import 'assignment_bloc.dart';

class AssignmentTab extends StatefulWidget {
  const AssignmentTab({super.key, required this.id});

  final int id;

  @override
  State<AssignmentTab> createState() => _AssignmentTabState();
}

class _AssignmentTabState extends State<AssignmentTab> {
  final bloc = AssignmentBloc();

  @override
  void initState() {
    bloc.init(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(AppColors.cF9),
      padding: 16.padding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildAddAss(),
            BlocBuilder<AssignmentBloc, BlocState<List<QuestionSetModel>>>(
              bloc: bloc,
              builder: (context, state) {
                if (state.status == Status.loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.status == Status.error) {
                  return const Center(child: Text("Có lỗi xảy ra"));
                }
                return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final assignment = state.data![index];
                    return _buildAssignment(assignment);
                  },
                  separatorBuilder: (context, index) => 16.height,
                  itemCount: state.data?.length ?? 0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAssignment(QuestionSetModel assignment) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: 16.radius,
        border: Border.all(
          color: const Color(AppColors.cF3),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                assignment.name ?? '',
                style: StyleApp.normal(
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  const Text('Due Jan 15, 2025'),
                  8.width,
                  ChipCustom(
                    color: const Color(AppColors.c04),
                    title: AppStrings.assigned,
                  )
                ],
              ),
            ],
          ).expanded(),
          8.width,
          ChipCustom(
            color: const Color(AppColors.c7C),
            title: AppStrings.viewStats,
          ),
        ],
      ),
    );
  }

  _buildAddAss() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.assignedExercises,
          style: StyleApp.normal(
            fontSize: 16,
          ),
        ),
        PrimaryButton(
          text: AppStrings.newAssignment,
          onClick: () {
            context.router.push(CreateQuestionSetRoute(classId: widget.id)).then((value) {
              if(value != null && (value as bool)) {
                bloc.init(widget.id);
              }
            },);
          },
          color: const Color(AppColors.c3B),
          textStyle: StyleApp.normal(color: Colors.white),
          prefixIcon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
