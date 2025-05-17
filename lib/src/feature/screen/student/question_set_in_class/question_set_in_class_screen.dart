import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/screen/student/question_set_in_class/question_set_in_class_bloc.dart';
import 'package:edu_land/src/model/question_set_in_student_class_model.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';
import '../../../../resources/constant/dummy_data.dart';
import '../../../components/custom_icon.dart';
import '../../../components/fa_icon.dart';

@RoutePage()
class QuestionSetInClassScreen extends StatefulWidget {
  const QuestionSetInClassScreen(
      {super.key, required this.id, required this.name});

  final int id;
  final String name;

  @override
  State<QuestionSetInClassScreen> createState() =>
      _QuestionSetInClassScreenState();
}

class _QuestionSetInClassScreenState extends State<QuestionSetInClassScreen> {
  final bloc = QuestionSetInClassBloc();

  @override
  void initState() {
    bloc.init(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: const Color(AppColors.cF9),
        leading: InkWell(
          onTap: () {
            context.router.maybePop();
          },
          child: Container(
            padding: 8.padding,
            margin: 8.paddingLeft,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(AppColors.cFFFF),
              boxShadow: [
                BoxShadow(
                  color: Color(AppColors.cE5),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: const FaIcon(iconCode: 'f060'),
          ),
        ),
      ),
      body: Container(
        padding: 16.padding,
        color: const Color(AppColors.cF9),
        child: BlocBuilder<QuestionSetInClassBloc, BlocState<List<QuestionSetInStudentClassModel>>>(
          bloc: bloc,
          builder: (context, state) {
            if (state.status == Status.error) {
              return Center(child: Text(state.msg ?? 'Error'));
            }
            if (state.status == Status.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  _buildProgress(),
                  16.height,
                  _buildQuestionSet(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _buildProgress() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.progress, style: StyleApp.normal(color: const Color(AppColors.c4B)),),
            Text('${bloc.getTotalDone()}/${bloc.state.data?.length ?? 0} ${AppStrings.completed}', style: StyleApp.normal(color: const Color(AppColors.c4B),))
          ],
        ),
        8.height,
       if((bloc.state.data?.length ?? 0) != 0)
       LinearProgressBar(
          maxSteps: bloc.state.data?.length ?? 0,
          currentStep: bloc.getTotalDone(),
          progressType: LinearProgressBar.progressTypeLinear,
          progressColor: const Color(AppColors.c60),
          backgroundColor: const Color(AppColors.cE5),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
      ],
    );
  }

  _buildQuestionSet() {
    return Column(
      children: bloc.state.data?.map((e) {
        return InkWell(
          onTap: () {
            // context.router.push(PlayQuizRoute(idQuestionSet: e.id ?? -1, title: e.name ?? '', classId: widget.id, onSubmit: () {
            //   bloc.init(widget.id);
            // },));
            context.router.push(StudentAttemptHistoryRoute(classId: widget.id, questionSetId: e.id ?? -1, title: widget.name))
            .then((value) {;
              bloc.init(widget.id);
            },);
          },
          child: Container(
            padding: 16.padding,
            margin: 8.paddingBottom,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              children: [
                CustomIcon(
                  code: DummyData
                      .codeFaicons[Random().nextInt(DummyData.codeFaicons.length)],
                  color: DummyData.colors[Random().nextInt(DummyData.colors.length)],
                ),
                16.width,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.name ?? '',
                        style: StyleApp.normal(fontSize: 18),
                      ),
                      4.height,
                      Text(e.description ?? ' '),
                    ],
                  ),
                ),
                16.width,
                if(e.done ?? false)
                  const FaIcon(iconCode: 'f00c', color: Color(AppColors.c34),)
              ],
            ),
          ),
        );
      },).toList() ?? [],
    );
  }
}
