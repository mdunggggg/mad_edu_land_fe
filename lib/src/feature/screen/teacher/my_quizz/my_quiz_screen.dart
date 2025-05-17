import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/delete_dialog.dart';
import 'package:edu_land/src/feature/screen/teacher/my_quizz/assign_quiz_dialog.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_date.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/check_status_bloc.dart';
import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';
import '../../../../router/router.gr.dart';
import '../../../components/delay_call_back.dart';
import '../../../components/fa_icon.dart';
import 'my_quiz_bloc.dart';

@RoutePage()
class MyQuizScreen extends StatefulWidget {
  const MyQuizScreen({super.key});

  @override
  State<MyQuizScreen> createState() => _MyQuizScreenState();
}

class _MyQuizScreenState extends State<MyQuizScreen> {
  final bloc = MyQuizBloc();
  final delayCallBack = DelayCallBack();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyQuizBloc, BlocState>(
      bloc: bloc,
      listener: (context, state) {
        CheckStateBloc.check(
            context,
            state,
            msg: state.msg,
            success: () {
             bloc.init();
            },
        );
      },
      child: Scaffold(
        backgroundColor: const Color(AppColors.cF9),
        appBar: AppBar(
          title: Text(AppStrings.yourQuizzes),
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppInput(
                hintText: AppStrings.searchQuizzes,
                radius: 999,
                prefixIcon: const Icon(Icons.search),
                contentPadding: 8.padding,
                bgColor: const Color(AppColors.cF3),
                onChanged:(p0) {
                  delayCallBack.debounce(
                    () {
                      bloc.init(
                        search: p0.isEmpty ? null : p0.trim(),
                      );
                    },
                  );
                } ,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.router.push(CreateQuestionSetRoute()).then(
              (value) {
                bloc.init();
              },
            );
          },
          backgroundColor: const Color(AppColors.c3B),
          shape: const CircleBorder(),
          child: const FaIcon(
            iconCode: '2b',
            color: Colors.white,
            size: 20,
          ),
        ),
        body: BlocBuilder<MyQuizBloc, BlocState>(
          bloc: bloc,
          builder: (context, state) {
            if (state.status == Status.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.status == Status.error) {
              return Center(child: Text(state.msg));
            }
            return Padding(
              padding: 16.padding,
              child: ListView.separated(
                itemCount: bloc.questionSets.length,
                itemBuilder: (context, index) {
                  final item = bloc.questionSets[index];
                  return InkWell(
                    onTap: () {
                      context.router.push(MyQuizDetailRoute(id: item.id ?? -1));
                    },
                      child: _buildModel(item)
                    ,);
                },
                separatorBuilder: (context, index) {
                  return 16.height;
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildModel(QuestionSetModel item) {
    return Container(
      padding: 12.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: 12.radius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                item.name ?? '',
                style: StyleApp.normal(fontSize: 18),
              ).expanded(),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  padding: 10.padding,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(AppColors.cD1F),
                  ),
                  alignment: Alignment.center,
                  child: const FaIcon(
                    iconCode: '2b',
                    color: Color(AppColors.c05),
                    size: 12,
                  ),
                ),
                onTap: () {
                  _showAssignDialog(item.id ?? 0);
                },
              ),
              4.width,
              InkWell(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  padding: 10.padding,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(AppColors.cFEE),
                  ),
                  alignment: Alignment.center,
                  child: const FaIcon(
                    iconCode: 'f1f8',
                    color: Color(AppColors.cDC),
                    size: 12,
                  ),
                ),
                onTap: () {
                  _showDeleteDialog(item.id ?? 0);
                },
              ),
            ],
          ),
          Text(
            '${item.totalQuestion} ${AppStrings.question.toLowerCase()}',
            style: StyleApp.normal(
                fontSize: 14, color: const Color(AppColors.c6B)),
          ),
          Text(
            '${AppStrings.createdAt} ${item.createdDate.format(
                format: 'MMM dd, yyyy')}',
            style: StyleApp.normal(
                fontSize: 12, color: const Color(AppColors.c6B)),
          )
        ],
      ),
    );
  }

  _showAssignDialog(int questionSetId) {
    showDialog(context: context, builder: (BuildContext context) {
      return AssignQuizDialog(questionSetId: questionSetId);
    });
  }

  _showDeleteDialog(int questionSetId) {
    showDialog(context: context, builder: (BuildContext context) {
      return DeleteDialog(
        title: AppStrings.confirmDelete,
        message: AppStrings.deleteQuizMessage,
        onDelete: () {
          bloc.deleteQuiz(questionSetId);
        },
      );
    });
  }
}
