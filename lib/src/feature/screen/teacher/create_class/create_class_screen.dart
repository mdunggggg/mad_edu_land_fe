import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/bloc/check_status_bloc.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/chip_custom.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/screen/login_and_register/register/register_screen.dart';
import 'package:edu_land/src/feature/screen/teacher/create_class/create_class_bloc.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';
import '../../../components/primary_button.dart';

@RoutePage()
class CreateClassScreen extends StatefulWidget {
  const CreateClassScreen({super.key, required this.success});

  final VoidCallback success;

  @override
  State<CreateClassScreen> createState() => _CreateClassScreenState();
}

class _CreateClassScreenState extends State<CreateClassScreen> {
  final bloc = CreateClassBloc();
  final name = TextEditingController();
  final description = TextEditingController();
  final classCode = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    description.dispose();
    classCode.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateClassBloc, BlocState>(
      bloc: bloc,
      listener: (context, state) {
        CheckStateBloc.check(
          context,
          state,
          msg: state.msg,
          success: widget.success,
          returnBack: true
        );
      },
      child: Scaffold(
        backgroundColor: const Color(AppColors.cF9),
        appBar: AppBar(
            title: Text(AppStrings.createNewClass),
            centerTitle: true,
            backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: 16.padding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppInput(
                  hintText: AppStrings.enterClassName,
                  label: AppStrings.className,
                  borderColor: const Color(AppColors.cE5),
                  bgColor: Colors.white,
                  controller: name,
                ),
                16.height,
                AppInput(
                  hintText: AppStrings.classDescription,
                  label: AppStrings.classDescription,
                  borderColor: const Color(AppColors.cE5),
                  bgColor: Colors.white,
                  controller: description,
                  maxLines: 5,
                ),
                16.height,
                _buildClassCode(),
                16.height,
                _buildClasses(),
                16.height,
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    text: AppStrings.createClass,
                    paddingVer: 14,
                    onClick: () {
                      bloc.createClass(
                        name: name.text,
                        description: description.text,
                        code: classCode.text,
                      );
                    },
                    color: const Color(AppColors.c3B),
                    textStyle: StyleApp.medium(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildClassCode() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: AppInput(
            hintText: AppStrings.classCode,
            label: AppStrings.classCode,
            bgColor: const Color(AppColors.cEFF),
            hintColor: const Color(AppColors.c25),
            textColor: const Color(AppColors.c25),
            controller: classCode,
          ),
        ),
        8.width,
        Container(
          padding: 16.paddingHor + 12.paddingVer,
          decoration: BoxDecoration(
            borderRadius: 16.radius,
            color: const Color(AppColors.cFCE),
          ),
          child: const FaIcon(
            iconCode: 'f0c5',
            color: Color(AppColors.cDB),
          ),
        ),
      ],
    );
  }

  _buildClasses() {
    return BlocBuilder<CreateClassBloc, BlocState>(
      bloc: bloc,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.gradeLevel),
            Row(
              children: [
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.c7C),
                    title: AppStrings.preschool,
                    onTap: () {
                      bloc.grade = GradleLevel.preschool;
                    },
                    isActive: bloc.grade == GradleLevel.preschool,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
                8.width,
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.c05),
                    title: AppStrings.grade1,
                    onTap: () {
                      bloc.grade = GradleLevel.grade_1;
                    },
                    isActive: bloc.grade == GradleLevel.grade_1,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
              ],
            ),
            8.height,
            Row(
              children: [
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.cD9),
                    title: AppStrings.grade2,
                    onTap: () {
                      bloc.grade = GradleLevel.grade_2;
                    },
                    isActive: bloc.grade == GradleLevel.grade_2,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
                8.width,
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.cDC),
                    title: AppStrings.grade3,
                    onTap: () {
                      bloc.grade = GradleLevel.grade_3;
                    },
                    isActive: bloc.grade == GradleLevel.grade_3,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
              ],
            ),
            8.height,
            Row(
              children: [
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.c25),
                    title: AppStrings.grade4,
                    onTap: () {
                      bloc.grade = GradleLevel.grade_4;
                    },
                    isActive: bloc.grade == GradleLevel.grade_4,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
                8.width,
                Expanded(
                  child: ChipCustom(
                    color: const Color(AppColors.cEA),
                    title: AppStrings.grade5,
                    onTap: () {
                      bloc.grade = GradleLevel.grade_5;
                    },
                    isActive: bloc.grade == GradleLevel.grade_5,
                    padding: 12.paddingVer,
                    borderRadius: 12.radius,
                    isBorder: false,
                    center: true,
                    titleSize: 16,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
