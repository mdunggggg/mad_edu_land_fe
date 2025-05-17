import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/custom_icon.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/screen/teacher/statistic/statistic_bloc.dart';
import 'package:edu_land/src/model/statistic_model.dart';
import 'package:edu_land/src/model/student_statistic_model.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_date.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_avatar/random_avatar.dart';

@RoutePage()
class StatisticScreen extends StatefulWidget {
  const StatisticScreen(
      {super.key, required this.classroomId, required this.questionSetId});

  final int classroomId;
  final int questionSetId;

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  final bloc = StatisticBloc();

  @override
  void initState() {
    bloc.init(
        classroomId: widget.classroomId, questionSetId: widget.questionSetId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      body: BlocBuilder<StatisticBloc, BlocState<StatisticModel>>(
        bloc: bloc,
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == Status.error) {
            return Center(child: Text(state.msg));
          }
          if (state.status == Status.success) {
            final model = state.data!;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (context.padding.top).height,
                    Text(
                      "Tên bài: ${model.questionSetName ?? ''}",
                      style: StyleApp.semibold(
                          fontSize: 24, color: const Color(0xff6254A3)),
                    ),
                    8.height,
                    Text(
                      "Mô tả: ${model.questionSetDescription ?? ''}",
                      style: StyleApp.normal(
                          fontSize: 20, color: const Color(0xff8A7CB0)),
                    ),
                    16.height,
                    _buildCommonStatistic(model),
                    16.height,
                    Text(
                      'Kết quả theo từng học sinh',
                      style: StyleApp.semibold(
                          fontSize: 20, color: const Color(0xff6254A3)),
                    ),
                    16.height,
                    _buildStudents(model.studentResults),
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: Text('No data'),
          );
        },
      ),
    );
  }

  _buildCommonStatistic(StatisticModel model) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildCommentStatistic(
                'f0c0',
                const Color(0xffE674AB),
                'Số người tham gia',
                '${model.totalStudentDone}/${model.totalStudent}',
              ),
            ),
            8.width,
            Expanded(
              child: _buildCommentStatistic(
                'f005',
                const Color(0xff48BFAF),
                'Điểm trung bình',
                '${model.averageScore?.toStringAsFixed(2)}',
              ),
            ),
          ],
        ),
        16.height,
        Row(
          children: [
            Expanded(
              child: _buildCommentStatistic(
                'f5a2',
                const Color(0xffFFB02E),
                'Điểm cao nhất',
                '${model.highestScore?.toStringAsFixed(2)}',
              ),
            ),
            8.width,
            Expanded(
              child: _buildCommentStatistic(
                'e296',
                const Color(0xff8F77DB),
                'Điểm thấp nhất',
                '${model.lowestScore?.toStringAsFixed(2)}',
              ),
            ),
          ],
        )
      ],
    );
  }

  _buildCommentStatistic(
      String icon, Color color, String title, String content) {
    return Container(
      padding: 8.padding,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomIcon(
                code: icon,
                color: color,
                padding: 8,
              ),
              8.width,
              Expanded(
                child: Text(
                  title,
                  style: StyleApp.semibold(
                      fontSize: 16, color: color.withOpacity(0.8)),
                ),
              ),
            ],
          ),
          Text(
            content,
            style: StyleApp.bold(color: color, fontSize: 24),
          ),
          8.height,
        ],
      ),
    );
  }

  _buildStudents(List<StudentStatisticModel> studentResults) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final student = studentResults[index];
          return _buildStudent(student, index + 1);
        },
        padding: 0.padding,
        separatorBuilder: (context, index) => 16.height,
        itemCount: studentResults.length);
  }

  _buildStudent(StudentStatisticModel student, int top) {
    final done = student.done ?? false;
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: const Color(0xffF9F9FF),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: top == 1
              ? const Color(0xffFFB02E)
              : top == 2
                  ? const Color(0xff48BFAF)
                  : top == 3
                      ? const Color(0xffE674AB)
                      : Colors.grey,
        )
      ),
      child: Row(
        children: [
          RandomAvatar(student.userId.toString(), height: 50, width: 50),
          16.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.fullName ?? '',
                  style: StyleApp.semibold(fontSize: 16),
                ),
                if(done)
                4.height,
                if(done)
                Text(
                  'Số câu đúng: ${student.correctAnswerCount}',
                  style: StyleApp.normal(fontSize: 14),
                ),
                if(done)
                  Text(
                    '${student.doAt?.format(format: 'hh:mm dd/MM/yyyy')}',
                    style: StyleApp.normal(fontSize: 14),
                  ),
              ],
            ),
          ),
          Text(
            done ? '${student.score?.toStringAsFixed(2)}' : 'Chưa làm',
            style: StyleApp.bold(fontSize: done ? 20 : 12, color: const Color(0xff6254A3)),
          ),
        ],
      ),
    );
  }
}
