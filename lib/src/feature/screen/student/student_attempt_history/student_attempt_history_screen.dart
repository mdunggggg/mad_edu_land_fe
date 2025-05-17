import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/feature/components/main_button.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/screen/student/student_attempt_history/student_attempt_history_bloc.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_date.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/bloc_state.dart';
import '../../../../model/student_attempt_model.dart';
import '../../../../resources/constant/app_colors.dart';
import '../../../components/fa_icon.dart';

@RoutePage()
class StudentAttemptHistoryScreen extends StatefulWidget {
  const StudentAttemptHistoryScreen({
    super.key,
    this.classId,
    required this.questionSetId,
    required this.title,
  });

  final int? classId;
  final int questionSetId;
  final String title;

  @override
  State<StudentAttemptHistoryScreen> createState() =>
      _StudentAttemptHistoryScreenState();
}

class _StudentAttemptHistoryScreenState
    extends State<StudentAttemptHistoryScreen> {
  final bloc = StudentAttemptHistoryBloc();

  @override
  void initState() {
    bloc.init(classId: widget.classId, questionSetId: widget.questionSetId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      appBar: AppBar(
        title: Text("Lịch sử làm bài"),
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: 16.padding,
              child: BlocBuilder<StudentAttemptHistoryBloc,
                  BlocState<List<StudentAttemptModel>>>(
                bloc: bloc,
                builder: (context, state) {
                  if (state.status == Status.error) {
                    return Center(child: Text(state.msg ?? 'Error'));
                  }
                  if (state.status == Status.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      final item = state.data![index];
                      return InkWell(
                        onTap: () {
                          context.router.push(ReviewQuizPlayedRoute(historyId: item.historyId ?? -1));
                        },
                        child: _buildAttemptItem(item),
                      );
                    },
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => 16.height,
                    itemCount: state.data?.length ?? 0,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MainButton(
              buttonTitle: (bloc.state.data?.isNotEmpty ?? false)
                  ? 'Làm lại'
                  : 'Bắt đầu làm bài',
              onPressed: () {
                // context.router.push(PlayQuizRoute(idQuestionSet: e.id ?? -1, title: e.name ?? '', classId: widget.id, onSubmit: () {
                //   bloc.init(widget.id);
                // },));
                context.router.push(PlayQuizRoute(
                    idQuestionSet: widget.questionSetId,
                    title: widget.title,
                    classId: widget.classId));
              },
              backgroundColor: const Color(AppColors.c10),
              textStyle: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              icon: const FaIcon(
                iconCode: 'f04b',
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttemptItem(StudentAttemptModel item) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: 20.radius,
        boxShadow: const [
          BoxShadow(
            color: Color(AppColors.cE5),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const FaIcon(
                iconCode: 'f133',
                color: Color(AppColors.c60),
                type: FaIconType.regular,
                size: 16,
              ),
              10.width,
              Text(
                item.finishedAt.format(
                  format: 'dd/MM/yyyy, h:mm a', // The format matching Figma
                  locale: 'vi',
                ),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColors.c4B),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const FaIcon(
                iconCode: 'f017',
                color: Color(AppColors.cFB9),
                size: 16,
              ),
              10.width,
              Text(
                'Thời gian làm bài : ' +
                    (item.timeTaken ?? 0).formatTimeTakenToMMss2(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColors.c4B),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const FaIcon(
                iconCode: 'f091',
                color: Color(AppColors.cFB),
                size: 16,
              ),
              10.width,
              RichText(
                text: TextSpan(
                  text: 'Điểm : ',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(AppColors.c4B),
                  ),
                  children: [
                    TextSpan(
                      text: '${item.score ?? 0} / 10.0',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(AppColors.c10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const FaIcon(
                iconCode: 'f140',
                color: Color(AppColors.cF8),
                size: 16,
              ),
              10.width,
              RichText(
                text: TextSpan(
                  text: 'Số câu đúng : ',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(AppColors.c4B),
                  ),
                  children: [
                    TextSpan(
                      text: '${item.correct ?? 0} / ${item.total ?? 0}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(AppColors.c3B),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
