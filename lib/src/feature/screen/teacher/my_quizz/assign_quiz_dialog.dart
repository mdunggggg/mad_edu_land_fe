import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/screen/teacher/my_quizz/assign_quiz_bloc.dart';
import 'package:edu_land/src/model/class_assign_info_model.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/constant/app_styles.dart';
import '../../../components/delay_call_back.dart';
import '../../../components/main_button.dart';
class AssignQuizDialog extends StatefulWidget {
  const AssignQuizDialog({super.key, required this.questionSetId});
  
  final int questionSetId;

  @override
  State<AssignQuizDialog> createState() => _AssignQuizDialogState();
}

class _AssignQuizDialogState extends State<AssignQuizDialog> {
  final bloc = AssignQuizBloc();

  final delayCallBack = DelayCallBack();
  
  @override
  void initState() {
    bloc.getStateAssignedClass(widget.questionSetId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 32.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: _buildDialogContent(),
    );
  }

  Widget _buildDialogContent() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color(AppColors.cF3),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppStrings.assignToClass,
            style: const TextStyle(
              fontSize: 20,
              color: Color(AppColors.c1F),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20.0),
          AppInput(
              hintText: AppStrings.enterClassCode,
              radius: 8,
              prefixIcon: const Icon(Icons.search),
              bgColor: const Color(AppColors.cF3),
              borderColor: const Color(AppColors.cE5),
              onChanged: (p0) {
                delayCallBack.debounce(
                  () {
                    bloc.getStateAssignedClass(
                      widget.questionSetId,
                      search: p0.isEmpty ? null : p0.trim()
                    );
                  },
                );
              },
          ),
          const SizedBox(height: 16.0),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 400.0, minHeight: 400.0),
            child: BlocBuilder<AssignQuizBloc, BlocState<List<ClassAssignInfoModel>>>(
              bloc: bloc,
              builder: (context, state) {
                if (state.status == Status.loading || state.status != Status.loaded) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.status == Status.error) {
                  return Center(child: Text(state.msg ?? 'Error'));
                }
                return ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = state.data?[index] ?? const ClassAssignInfoModel();
                    return _buildItem(item);
                  },
                  itemCount: state.data?.length ?? 0,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Color(AppColors.cE5),
                      height: 1.0,
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 16.0),
          MainButton(
              buttonTitle: AppStrings.cancel,
              onPressed: () {
                Navigator.of(context).pop();
              },
              backgroundColor: const Color(AppColors.cFEE),
              textStyle: const TextStyle(
                fontSize: 16,
                color: Color(AppColors.c99),
                fontWeight: FontWeight.w500,),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(ClassAssignInfoModel item) {
    return Container(
      margin: const EdgeInsets.only(top: 4.0),
      decoration: const BoxDecoration(
        color: Color(AppColors.cF3),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name ?? '',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(AppColors.c1F),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '${item.totalStudent ?? ''}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(AppColors.c6B),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
              ),
              ElevatedButton(
                onPressed: (item.assigned ?? false)
                    ? null
                    : () {
                        bloc.assignClass(item.id ?? 0, widget.questionSetId);
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: (item.assigned ?? false)
                      ? const Color(AppColors.c1F)
                      : const Color(AppColors.cD1F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                ),
                child: Text(
                    (item.assigned ?? false)
                        ? AppStrings.assigned
                        : AppStrings.assign,
                    style: (item.assigned ?? false)
                        ? const TextStyle(
                            fontSize: 14.0,
                            color: Color(AppColors.c00),
                            fontWeight: FontWeight.normal)
                        : const TextStyle(
                            fontSize: 14.0,
                            color: Color(AppColors.c04),
                            fontWeight: FontWeight.w500)),
              ),
            ],
          ),
      )
    );
  }
}
