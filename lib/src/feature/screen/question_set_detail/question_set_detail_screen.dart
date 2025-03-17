import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/custom_icon.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/resources/constant/dummy_data.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/constant/app_colors.dart';
import '../../../resources/constant/app_styles.dart';
import '../student/home/student_home_screen.dart';
import 'question_set_detail_bloc.dart';

@RoutePage()
class QuestionSetDetailScreen extends StatefulWidget {
  const QuestionSetDetailScreen({super.key, required this.category});

  final Category category;

  @override
  State<QuestionSetDetailScreen> createState() =>
      _QuestionSetDetailScreenState();
}

class _QuestionSetDetailScreenState extends State<QuestionSetDetailScreen> {
  final bloc = QuestionSetDetailBloc();

  @override
  void initState() {
    bloc.getFreeQuestionSet(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name.toLowerCase().tr()),
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
      backgroundColor: const Color(AppColors.cF9),
      body: Container(
        padding: 8.padding,
        child: BlocBuilder<QuestionSetDetailBloc,
            BlocState<List<QuestionSetModel>>>(
          bloc: bloc,
          builder: (context, state) {
            if (state.status == Status.error) {
              return Center(child: Text(state.msg ?? 'Error'));
            }
            if (state.status == Status.loading ||
                state.status != Status.loaded) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.separated(
              itemCount: state.data?.length ?? 0,
              itemBuilder: (context, index) {
                final item = state.data![index];
                return _buildItem(item);
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 16.0),
            );
          },
        ),
      ),
    );
  }

  Widget _buildItem(QuestionSetModel item) {
    return InkWell(
      onTap: () {
        context.router.push(PlayQuizRoute(idQuestionSet: item.id ?? -1, title: item.name ?? ''));
      },
      child: Container(
        padding: 16.padding,
        decoration: BoxDecoration(
          color: const Color(AppColors.cFFFF),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: Color(AppColors.cE5),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
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
                    item.name ?? '',
                    style: StyleApp.normal(fontSize: 18),
                  ),
                  4.height,
                  Text(
                    item.description ?? '',
                    style: StyleApp.normal(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
