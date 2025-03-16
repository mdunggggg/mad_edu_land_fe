import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/screen/teacher/profile/teacher_profile_screen.dart';
import 'package:edu_land/src/feature/screen/teacher/teacher_home_screen/teacher_home_screen.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:flutter/material.dart';
@RoutePage()
class TeacherHomepageScreen extends StatefulWidget {
  const TeacherHomepageScreen({super.key});

  @override
  State<TeacherHomepageScreen> createState() => _TeacherHomepageScreenState();
}

class _TeacherHomepageScreenState extends State<TeacherHomepageScreen> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    TeacherHomeScreen(),
    Center(
      child: Text(
        'Index 1: Classes',
      ),
    ),
    Center(
      child: Text(
        'Index 2: Forum',
      ),
    ),
    TeacherProfileScreen(),
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
              label: AppStrings.quizzes,
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
