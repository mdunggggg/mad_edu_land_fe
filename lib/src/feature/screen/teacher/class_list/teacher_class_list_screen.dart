import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/screen/teacher/class_list/teacher_class_list_bloc.dart';
import 'package:edu_land/src/model/teacher_class_info_model.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/constant/app_images.dart';
import '../../../../resources/constant/app_strings.dart';
import '../../../components/app_input.dart';
import '../../../components/delay_call_back.dart';

@RoutePage()
class TeacherClassListScreen extends StatefulWidget {
  const TeacherClassListScreen({super.key});

  @override
  State<TeacherClassListScreen> createState() => _TeacherClassListScreenState();
}

class _TeacherClassListScreenState extends State<TeacherClassListScreen> {
  final bloc = TeacherClassListBloc();

  final delayCallBack = DelayCallBack();

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
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: InkWell(
                onTap: () {
                  // Navigate to create class screen
                  context.router.push(
                    CreateClassRoute(
                        success: () {
                          bloc.init();
                        }
                    )
                  );
                },
                  borderRadius: BorderRadius.circular(50),
                child: Container(
                  padding: 10.padding,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(AppColors.c3B),
                  ),
                  alignment: Alignment.center,
                  child: const FaIcon(
                    iconCode: '2b',
                    color: Color(AppColors.cFFFF),
                    size: 16,
                  ),
                )
              )
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Padding(
                padding: EdgeInsets.all(8.0),
              child: AppInput(
                hintText: AppStrings.searchClasses,
                radius: 999,
                prefixIcon: const Icon(Icons.search),
                contentPadding: 8.padding,
                bgColor: const Color(AppColors.cF3),
                onChanged: (p0) {
                  delayCallBack.debounce(
                    () {
                      bloc.init(
                        search: p0.isEmpty ? null : p0.trim()
                      );
                    },
                  );
                },
              ),
            ),
        ),
      ),
      body: BlocBuilder<TeacherClassListBloc, BlocState>(
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
              itemCount: bloc.classList.length,
              itemBuilder: (context, index) {
                final item = bloc.classList[index];
                return _buildModel(item);
              },
              separatorBuilder: (context, index) {
                return 16.height;
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildModel(TeacherClassInfoModel item) {
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${item.name}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(AppColors.c1F),
                ),
              ),
              const SizedBox(height: 4.0),
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.imgTotalStudents,
                    height: 16,
                    width: 20,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    '${item.totalStudent} ${AppStrings.students} - ',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(AppColors.c6B),
                    ),
                  ),
                  Text(
                    item.grade == 0 ? 'Mâm Non' : 'Lớp ${item.grade}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(AppColors.c6B),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
              Container(
                  padding: 8.paddingVer + 12.paddingHor,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(AppColors.cF3),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${AppStrings.code}: ${item.code}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(AppColors.c4B),
                    ),
                  )
              )
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              context.router.push(
                ClassroomDetailRoute(
                    id: item.id ?? 0,
                    title: item.name ?? '',
                )
              );
            },
            child: Container(
              padding: 12.paddingVer + 20.paddingHor,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(AppColors.cED),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    AppStrings.manage,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(AppColors.c7C),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  SvgPicture.asset(
                    AppImages.imgNext,
                    height: 18,
                    width: 12,
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
