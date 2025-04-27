import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/screen/student/home/student_home_screen.dart';
import 'package:edu_land/src/feature/screen/student/my_classrooms/my_classrooms_screen.dart';
import 'package:edu_land/src/feature/screen/student/profile/student_profile_screen.dart';
import 'package:edu_land/src/feature/screen/welcome/welcome_screen.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:flutter/material.dart';

import '../forum/list_forum/list_forum_screen.dart';
@RoutePage()
class StudentHomepageScreen extends StatefulWidget {
  const StudentHomepageScreen({super.key});

  @override
  State<StudentHomepageScreen> createState() => _StudentHomepageScreenState();
}

class _StudentHomepageScreenState extends State<StudentHomepageScreen> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    StudentHomeScreen(),
    MyClassroomsScreen(),
    ListForumScreen(),
   StudentProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cFFFF),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(AppColors.cE5),
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(AppColors.cFFFF),
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: const Color(AppColors.cEC),
          unselectedItemColor: const Color(AppColors.c9C),
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(iconCode: 'f015', color: _selectedIndex == 0 ? const Color(AppColors.cEC) : const Color(AppColors.c9C)),
              label: AppStrings.home,
            ),
            BottomNavigationBarItem(
              icon: FaIcon(iconCode: 'f02d', color: _selectedIndex == 1 ? const Color(AppColors.cEC) : const Color(AppColors.c9C)),
              label: AppStrings.classes,
            ),
            BottomNavigationBarItem(
              icon: FaIcon(iconCode: 'f27a', color: _selectedIndex == 2 ? const Color(AppColors.cEC) : const Color(AppColors.c9C)),
              label: AppStrings.forum,
            ),
            BottomNavigationBarItem(
              icon: FaIcon(iconCode: 'f007', color: _selectedIndex == 3 ? const Color(AppColors.cEC) : const Color(AppColors.c9C)),
              label: AppStrings.profile,
            ),
          ],
        ),
      ),

    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
