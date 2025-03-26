import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/feature/screen/teacher/classroom_detail/tabs/assignment_tab/assignment_tab.dart';
import 'package:edu_land/src/feature/screen/teacher/classroom_detail/tabs/student_tab/student_tab.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';

@RoutePage()
class ClassroomDetailScreen extends StatefulWidget {
  const ClassroomDetailScreen({
    super.key,
    required this.id,
    required this.title,
  });

  final int id;
  final String title;

  @override
  State<ClassroomDetailScreen> createState() => _ClassroomDetailScreenState();
}

class _ClassroomDetailScreenState extends State<ClassroomDetailScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: const Color(AppColors.c25),
          labelColor: const Color(AppColors.c25),
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(text: AppStrings.student),
            Tab(text: AppStrings.assignments),
            Tab(text: AppStrings.statistics),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          StudentTab(id: widget.id),
          AssignmentTab(id: widget.id),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text('Statistics'),
            ),
          ),
        ],
      ),
    );
  }
}
