import 'package:easy_localization/easy_localization.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/custom_icon.dart';
import 'package:edu_land/src/feature/components/delete_dialog.dart';
import 'package:edu_land/src/feature/components/dialog_utils.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/screen/teacher/classroom_detail/tabs/student_tab/student_bloc.dart';
import 'package:edu_land/src/model/student_profile_model.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_avatar/random_avatar.dart';

class StudentTab extends StatefulWidget {
  const StudentTab({super.key, required this.id});

  final int id;

  @override
  State<StudentTab> createState() => _StudentTabState();
}

class _StudentTabState extends State<StudentTab> {
  final bloc = StudentBloc();

  final TextEditingController _studentController = TextEditingController();

  @override
  void dispose() {
    _studentController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    bloc.init(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.dialog(Dialog(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: 16.radius,
              ),
              padding: 16.padding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   AppInput(
                    hintText: 'Nhập tên tài khoản học sinh',
                    label: 'Tài khoản học sinh',
                    borderColor: Colors.grey,
                    controller: _studentController,
                  ),
                  16.height,
                  PrimaryButton(
                    text: 'Thêm',
                    onClick: () async {
                      context.pop();
                      final res = await bloc.addStudent(username: _studentController.text, classroomId: widget.id);
                      if(res) {
                        bloc.init(widget.id);
                      }
                      else{
                        DialogUtils.showError(context, bloc.errorMsg.tr());
                      }
                    },
                    color: Colors.blue,
                    textStyle: StyleApp.normal(color: Colors.white),
                  )
                ],
              ),
            ),
          ));
        },
      ),
      body: Container(
        color: const Color(AppColors.cF9),
        padding: 16.padding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppInput(
                hintText: 'Tìm kiếm học sinh...',
                prefixIcon: Icon(Icons.search),
                borderColor: Color(AppColors.cE5),
                bgColor: Colors.white,
              ),
              16.height,
              BlocBuilder<StudentBloc, BlocState<List<StudentProfileModel>>>(
                bloc: bloc,
                builder: (context, state) {
                  if (state.status == Status.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.status == Status.error) {
                    return const Center(child: Text('Có lỗi xảy ra'));
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final student = state.data![index];
                      return _buildStudent(student);
                    },
                    separatorBuilder: (context, index) => 16.height,
                    itemCount: state.data?.length ?? 0,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStudent(StudentProfileModel student) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 16.radius,
          border: Border.all(
            color: const Color(AppColors.cF3),
          )),
      child: Row(
        children: [
          RandomAvatar(student.hashCode.toString(), height: 50, width: 50),
          12.width,
          Text(
            student.fullName ?? '',
            style: StyleApp.normal(fontSize: 16),
          ).expanded(),
          InkWell(
            onTap: () {
              _showDeleteStudentDialog(widget.id, student.id ?? 0);
            },
            child: const CustomIcon(
              code: 'e59b',
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }

  _showDeleteStudentDialog(int classroomId, int studentId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DeleteDialog(
          title: AppStrings.confirmDelete,
          message: AppStrings.deleteStudentMessage,
          onDelete: () async {
            final res = await bloc.removeStudent(
                classroomId: classroomId, studentId: studentId);
            if (res) {
              bloc.init(classroomId);
            } else {
              DialogUtils.showError(context, bloc.errorMsg.tr());
            }
          },
        );
      },
    );
  }
}
